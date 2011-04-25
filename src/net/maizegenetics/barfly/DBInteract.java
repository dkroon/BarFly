package net.maizegenetics.barfly;

import java.sql.*;
import java.sql.Date;
import java.text.*;
import java.util.*;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/**
 * Using net.maizegenetics.barfly.DBInteract object to perform all interactions w/ database
 */
public class DBInteract {

    private static String PROJECT = "maize"; /*   "biofuel"; */
    private static boolean SCORING_EARS = false;
    private int lengthOfRowId = 7;

    private static Connection conn;
    private static String phenotypesTable ;
    private static String rawDataTable ;


    public DBInteract(){

        conn = DBConnection.getConnection();
        if(PROJECT == "maize"){
            phenotypesTable = "phenotypes_2010";
            rawDataTable = "raw";
        }
        if(PROJECT == "biofuel"){
            phenotypesTable = "phenotypes_biofuel_09_10";
            rawDataTable = "raw_biofuel_2011";
        }

    }

    /**
     * generate a list up front to eliminate gratuitous network and RDBMS activity
     */
    public ArrayList getTraitIDList(){
        ArrayList aTraitId = new ArrayList();
        String sql = "SELECT TRAITID from TraitInfo";
        Statement stmt = null;
        ResultSet rs = null;
        try {
            if(conn==null){
                conn = DBConnection.getConnection();
            }
            stmt = conn.createStatement();
            stmt.execute(sql);
            rs = stmt.getResultSet();
        } catch (SQLException e) {  e.printStackTrace();   }
        try{
            while(rs.next()){
                aTraitId.add(rs.getString("TRAITID"));
            }
        }catch(SQLException se){    se.printStackTrace();   }
        return aTraitId;
    }
    
    // Insert scans unchanged into BarFly.raw as backup
    // then parse into individual records into BarFly.phenotypes
    // returns 0 if error, 1 if ok
    // returns -1 if there was no data
    public int insertScans(String user, String fileName, String rawData) {
        if (rawData == null) {
            return -1;
        }

        rawData.split("\n");

//        // Returns a version of the input where all contiguous
//        // whitespace characters are replaced with a single
//        // space. Line terminators are treated like whitespace.
//        CharSequence cs = rawData;
//        String patternStr = "\\s+";
//        String replaceStr = " ";
//        Pattern pattern = Pattern.compile(patternStr);
//        Matcher matcher = pattern.matcher(cs);
//        String newString = matcher.replaceAll(replaceStr);
//
        LineParser lp = new LineParser(SCORING_EARS);
        try {
            // First insert scans as one huge chunk into BarFly.raw
            // parse the collection date from the RawData so data_date can be loaded
            PhenoRecord[] r = lp.constructPheno(rawData);

            String traitDateString = r[0].getTRAITDATE();
//            java.text.DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
            java.util.Date javaDate = null;
            if (traitDateString != null) {
                java.text.DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
            try{
                javaDate = df.parse(traitDateString);
            }catch(ParseException pe){
                pe.printStackTrace();
                }
            }
            if(javaDate == null){
                return 0;
            }else{
            java.text.DateFormat dbFormat = new SimpleDateFormat("yyyy-MM-dd");
            String theDate = dbFormat.format(new Date(javaDate.getTime()));
            Statement x = conn.createStatement();
            String updateCmd = "INSERT INTO " + rawDataTable + " (Scorer, RawData, LoadTime, record_count, filename, data_date ) VALUES ('" +
                    user + "','" + rawData + "', NOW(), " + r.length + ", '" + fileName + "', '" + theDate + "')";

            x.executeUpdate(updateCmd);

            return 1;
            }

        } catch (SQLException e) {
            e.printStackTrace();

            return 0;
        }
    }

    /*
       This assumes each barcode scan in your rawData table is separated by a \n character
       returns String of all records inserted
     */
    public int parseRawData() {
        ResultSet rs = null;
        int loaded = 0;


        try {
            if(conn == null){
                conn = DBConnection.getConnection();
            }
            Statement stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT " + rawDataTable + ".RawData, " + rawDataTable + ".LoadID FROM " + rawDataTable + " WHERE (" + rawDataTable + ".Processed)=0");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (rs != null) {
            LineParser lp = new LineParser(SCORING_EARS);
            try {
                //while more records
                while (rs.next()) {
                    try {
                        //grab blob from individual record in blob and call ConstructPheno w/it
                        String toParse = rs.getString("RawData");
                        int lid = rs.getInt("LoadID");
                        PhenoRecord[] r = lp.constructPheno(toParse);
                        int fileLoad = insertPhenoRecords(r, lid, phenotypesTable, null
                        );  // returns number of records successfully added
                        loaded += fileLoad;
                        String s = "UPDATE " + rawDataTable + " SET processed = 1, record_count = " + fileLoad + " WHERE LoadID=" + lid;
                        Statement aStatment = conn.createStatement();
                        aStatment.execute(s);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }// end while

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }//end if
        return loaded;
    }

    /**
     *  input two files and resolve issues that exist when people do not consistently scan the &91 and &92 bar codes
     *
     * @param fileOne
     * @param fileTwo
     */

    public void reconcileTwoFiles(String fileOne, String fileTwo){
        StringBuilder sb = new StringBuilder();


        //read & parse the first file
        try {
            BufferedReader inOne = new BufferedReader(new FileReader(fileOne));
            String str;
            while ((str = inOne.readLine()) != null) {
                sb.append(str.trim() + "\n");
            }
            inOne.close();
        } catch (IOException e) {
        }
        LineParser lpOne = new LineParser(SCORING_EARS);
        Map mapOne = lpOne.constructMap(sb.toString());

        //read & parse the second file
        try {
            sb = new StringBuilder();
            BufferedReader inTwo = new BufferedReader(new FileReader(fileTwo));
            String str;
            while ((str = inTwo.readLine()) != null) {
                sb.append(str.trim() + "\n");
            }
            inTwo.close();
        } catch (IOException e) {
        }
        LineParser lpTwo = new LineParser(SCORING_EARS);
        Map mapTwo = lpTwo.constructMap(sb.toString());
        //PhenoRecord[] pr = lpTwo.constructPheno(sb.toString());

        //determine which do not end in 91 or 92 and fix it
        Set keysOne = mapOne.keySet();
        Iterator keyIterator = keysOne.iterator();
        while(keyIterator.hasNext()){
            String key = (String)keyIterator.next();
            int startingPoint = key.length() - 2;
            if( (-1 == key.indexOf("91", startingPoint)) && ( -1 == key.indexOf("92", startingPoint))){
                System.out.println("keyOne: " + key);
                Map traitsMap = (Map)mapOne.get(key);

                System.out.println("traitsMap.size() " + traitsMap.size());
            }
        }

        Set keysTwo = mapTwo.keySet();
        keyIterator = keysTwo.iterator();
        while(keyIterator.hasNext()){

            String key = (String)keyIterator.next();
            int startingPoint = key.length() - 2;
            if( (-1 == key.indexOf("91", startingPoint)) && ( -1 == key.indexOf("92", startingPoint))){
                System.out.println("keyTwo: " + key);
                Map traitsMap = (Map)mapTwo.get(key);
                System.out.println("traitsMap.size() " + traitsMap.size());

            }
        }


        System.out.println("keysOne.size() " + keysOne.size() );
        System.out.println("keysTwo.size() " + keysTwo.size() );
        keysOne.removeAll(keysTwo);
        int inTwoButNotOne = keysOne.size();
        System.out.println("inTwoButNotOne = " + inTwoButNotOne);
        keysTwo.removeAll(mapOne.keySet());

        int inOneButNotTwo = keysTwo.size();
        System.out.println("inOneButNotTwo = " + inOneButNotTwo);




    }



    /**
     *
     * @param data
     * @return number of records actually inserted

     */
    private int insertPhenoRecords(PhenoRecord[] data, int rawLoadID, String tableName, String fileName)  {

        int recordsInserted = 0;
        String s = "INSERT INTO " + tableName + " (ENTITYID,entity_id_base,TRAITID,TRAITNAME,TRAITVALUE, TRAITDATE, SCORER, VALSTATUS, comment, raw_load_id)" +
                " VALUES (?,?,?,?,?,?,?,?,?,?)";

        for (int i = 0; i < data.length; i++) {
            if (data[i] != null) {
                PreparedStatement select = null;
                try {
                    select = conn.prepareStatement(s);
                } catch (SQLException e) {  e.printStackTrace();    }
                try {
                    String entityId = data[i].getENTITYID();
                    select.setString(1, entityId);

                    int truncationLength = lengthOfRowId;
                    if(entityId.length() <lengthOfRowId){ truncationLength = entityId.length(); }
                    String entity_id_base = "";
                    if(entityId.length() >0){
                        entity_id_base = data[i].getENTITYID().substring(0,truncationLength);
                    }
                    select.setString(2, entity_id_base);
                    select.setString(3, data[i].getTRAITID());
                    select.setString(4, data[i].getTRAITNAME());
                    select.setString(5, data[i].getTRAITVALUE());
                    select.setString(6, data[i].getTRAITDATE());
                    select.setString(7, data[i].getSCORER());
                    select.setString(8, data[i].getVALSTATUS());
                    select.setString(9, data[i].getCOMMENT());
                    select.setInt(10, rawLoadID);
                    select.execute();
                    recordsInserted++;
                } catch (SQLException e) {  e.printStackTrace();    }
            }
        }//end for

        return recordsInserted;
    }


    /**
     * a method for cleaning up messy data.
     * It is recommended to load data into an empty table and then clean it up before moving it
     * into the phenotypes table.
     * @param fileContents
     * @param fileName
     */
    public void insertDataPrimitively(String fileContents, String fileName){

        LineParser lp = new LineParser(SCORING_EARS);
//        PhenoRecord[] pr = lp.constructPheno(fileContents);

        String[] split = fileContents.split("\n");

        PhenoRecord[] pr = new PhenoRecord[split.length];
        int prCount = 0;
        // go through and set up PhenoRecord[]
        for (int i = 0; i < split.length;) {

            PhenoRecord basicPhenoRecord = new PhenoRecord();
            String traitdate = deriveTraitDate(fileName);
//            System.out.println("filename:" + fileName + "\ttraitdate = " + traitdate);
            basicPhenoRecord.setTRAITDATE(traitdate);

            i = lp.parseLinePrimitively(split, i, basicPhenoRecord);
//            i = lp.parseLine(split, i, basicPhenoRecord);

//            pr[prCount++] = basicPhenoRecord;
        }
        PhenoRecord[] r = PhenoRecordStore.getPhenoRecordStore().getAllPhenoRecords();

        int fileLoad = insertPhenoRecords(r, 0, "phenotypes_2006_Narasim", fileName);  // returns number of records successfully added
//        int fileLoad = insertPhenoRecords(r, 0, "phenotypes_2006_N_first_batch;", fileName);  // returns number of records successfully added
    }

    public String deriveTraitDate(String filename){
        return filename.substring(2,4) + "/" + filename.substring(4,6) + "/20" + filename.substring(0,2);

    }
    public static void main(String[] args) {

        DBInteract db = new DBInteract();
        db.reconcileTwoFiles(args[0], args[1]);
    }
}
