package net.maizegenetics.barfly;

import java.util.StringTokenizer;
import java.util.ArrayList;
import java.util.Map;

/**
 * User: dkroon
 * Date: Dec 20, 2006
 * Time: 2:44:29 PM
 */
public class LineParser {

    ArrayList traitID = null;
    private boolean scoringEars;  

    public LineParser(boolean scoringEars){

        this.scoringEars = scoringEars;
         DBInteract db = new DBInteract();
         traitID = db.getTraitIDList();
     }

    public PhenoRecord[] constructPheno(String blob)  {

        String traitdate = null;

        String[] split = blob.split("\n");

        // go through once and get the basic file info
        for (int i = 0; i < split.length; i++) {
            String scanLine = split[i].trim();
            // re-assign trimmed value to the array
            split[i] = scanLine;
            //vb# is date
            if (scanLine.startsWith("vb#")) {
                traitdate = scanLine.substring(3);
                continue;
            }
        }
        PhenoRecord basicPhenoRecord = new PhenoRecord();
        basicPhenoRecord.setTRAITDATE(traitdate);

        // go through a second time and set up PhenoRecord[]
        for (int i = 0; i < split.length;) {

            i = parseLine(split, i, basicPhenoRecord);

        }
        return PhenoRecordStore.getPhenoRecordStore().getAllPhenoRecords();

    }

    public ArrayList constructArrayList(String fileString){

        String[] split = fileString.split("\n");
        PhenoRecord basicPhenoRecord = new PhenoRecord();

        // go through and set up PhenoRecord[]
        for (int i = 0; i < split.length;) {

            i = parseLine(split, i, basicPhenoRecord);

        }
        return PhenoRecordStore.getPhenoRecordStore().getPhenoRecordArrayList();
    }


    public Map constructMap(String fileString){
        String[] split = fileString.split("\n");
        PhenoRecord basicPhenoRecord = new PhenoRecord();

        // go through and set up PhenoRecord[]
        for (int i = 0; i < split.length;) {

            i = parseLine(split, i, basicPhenoRecord);

        }
        return PhenoRecordStore.getPhenoRecordStore().getPhenoRecordMap();

    }

    public int parseLine(String[] line, int lineIndex, PhenoRecord aPhenoRecord){
        int lineCount = line.length;

        PhenoRecord internalPhenoRecord = null;
        if(PhenoRecordStore.getPhenoRecordStore().isEmpty()){
            PhenoRecordStore.getPhenoRecordStore().addPhenoRecord(aPhenoRecord);
            internalPhenoRecord = aPhenoRecord;
        }else{
            internalPhenoRecord = PhenoRecordStore.getPhenoRecordStore().getLastPhenoRecord();
        }

        if(isScannerCode(line, lineIndex)){
            return lineIndex + 1;
        }

        if(isEntityId(line, lineIndex)){
            // QQQQ need to add code to elegantly ignore and exit when there is no entityID (when user has failed to enter one)
            int increment = 0;
            if(!isEntityIdAppendix(line, lineIndex)){
                internalPhenoRecord.setENTITYID(line[lineIndex]);
                System.out.println("entityid: " + line[lineIndex]);
                increment++;
            }else{
                  internalPhenoRecord.setENTITYID(internalPhenoRecord.getENTITYID().substring(0,7) + line[lineIndex].substring(1));
                  increment++;
            }
            // look ahead for a plant number to append to the ENTITYID
            if(isEntityIdAppendix(line, lineIndex + 1)){
                if(lineIndex + 1 <= lineCount){
//                    line[lineIndex + 1]  
                    internalPhenoRecord.setENTITYID(internalPhenoRecord.getENTITYID().substring(0,7) + line[lineIndex + 1].substring(1));
                    increment++;
                    if (lineIndex + increment <= lineCount) {
                        if (isPollinationDescriptor(line, lineIndex + increment)) {
                            internalPhenoRecord.setVALSTATUS(line[lineIndex + increment]);
                            increment++;
                        }
                    }
                }
            }

            // when someone fails to scan a %91 for the first ear, put it in
            if (scoringEars) {
                String entityID = internalPhenoRecord.getENTITYID();
                if (9 > entityID.length()) {
                    internalPhenoRecord.setENTITYID(entityID + "91");
                }
            }

            return lineIndex + increment;
        }

        if(isScorer(line, lineIndex)){
            String scorer = internalPhenoRecord.getSCORER();
            if(scorer != null){
                internalPhenoRecord.setSCORER(scorer + "-" + line[lineIndex].substring(3));
            }else{
                internalPhenoRecord.setSCORER(line[lineIndex].substring(3));
            }
            return lineIndex + 1;
        }

        if(isTraitId(line, lineIndex)){
            // QQQQ remove when done uploading Narasim data
            if( /*!verifyTraitId(line[lineIndex]) || */ line[lineIndex].length() < 3 ){
                return lineIndex + 1;
            }
            int hashIndex = line[lineIndex].indexOf("#");
            String traitId = line[lineIndex].substring(0,hashIndex);
            String traitValue = line[lineIndex].substring(hashIndex + 1);
            // look ahead one line to look for "+"
            String addValue = null;
            if(lineIndex + 1 < lineCount){
                // because Nick forgot to prefix the tools with a "+", I refactored the code to
                // take either a "+" or a decimal preceding a number
                if(line[lineIndex + 1].startsWith("+") || line[lineIndex + 1].startsWith(".") ){
                    if(line[lineIndex + 1].startsWith("+") ){
                        addValue = line[lineIndex + 1].substring(1);
                    }else{  // line[lineIndex + 1].startsWith(".")
                        addValue = line[lineIndex + 1];
                    }
                    traitValue = addTwoStrings(traitValue, addValue);
                    lineIndex++;
                }
            }
            internalPhenoRecord.setTRAITID(traitId);
            internalPhenoRecord.setTRAITVALUE(traitValue);
            // look ahead for comment
            if(lineIndex + 1 < lineCount){
                String aComment = null;
                if((aComment = getComment(line, lineIndex + 1)) != null){
                    internalPhenoRecord.setCOMMENT(aComment);
                    lineIndex = lineIndex + new StringTokenizer(aComment, "; ").countTokens();
                }
            }
            // reset everything except ENTITYID and SCORER and TRAITDATE if not the end of file
            if (lineIndex + 1 < lineCount) {
                PhenoRecord aPhenoRecordTemp = new PhenoRecord();
                aPhenoRecordTemp.setENTITYID(internalPhenoRecord.getENTITYID());
                aPhenoRecordTemp.setSCORER(internalPhenoRecord.getSCORER());
                aPhenoRecordTemp.setTRAITDATE(internalPhenoRecord.getTRAITDATE());
                // add values to record store
                PhenoRecordStore.getPhenoRecordStore().addPhenoRecord(aPhenoRecordTemp);
            }
            return lineIndex + 1;
        } // end of if(isTraitId())

        return lineIndex + 1;
    }

    /**
     * a method for cleaning up messy data.
     * It is recommended to load data into an empty table and then clean it up before moving it
     * @param line
     * @param lineIndex
     * @param aPhenoRecord
     * @return
     */
    public int parseLinePrimitively(String[] line, int lineIndex, PhenoRecord aPhenoRecord){
            int lineCount = line.length;

            PhenoRecord internalPhenoRecord = null;
            if(PhenoRecordStore.getPhenoRecordStore().isEmpty()){
                PhenoRecordStore.getPhenoRecordStore().addPhenoRecord(aPhenoRecord);
                internalPhenoRecord = aPhenoRecord;
            }else{
                internalPhenoRecord = PhenoRecordStore.getPhenoRecordStore().getLastPhenoRecord();
            }

            if(isEntityId(line, lineIndex)){
                int increment = 0;

                internalPhenoRecord.setENTITYID(line[lineIndex]);
                increment++;
                if(isPollinationDescriptor(line, lineIndex + increment)){
                    internalPhenoRecord.setVALSTATUS(line[lineIndex + increment]);
                    increment++;
                }

                return lineIndex + increment;
            }
//            if(isPollinationDescriptor(line, lineIndex)){
//                int increment = 0;
//                internalPhenoRecord.setVALSTATUS(line[lineIndex]);
//                increment++;
//
//                return lineIndex + increment;
//            }

            if(isTraitId(line, lineIndex)){
//                if( !verifyTraitId(line[lineIndex]) || line[lineIndex].length() < 3 ){
//                    return lineIndex + 1;
//                }
                int hashLoc = line[lineIndex].indexOf('#');
                String traitId = line[lineIndex].substring(0, hashLoc);
                traitId = traitId.trim();
                String traitValue = line[lineIndex].substring(hashLoc+1).trim();
                // look ahead one line to look for "+"
                String addValue = null;
                if(lineIndex + 1 < lineCount){
                    if(line[lineIndex + 1].startsWith("+")){
                        addValue = line[lineIndex + 1].substring(1);
                        traitValue = addTwoStrings(traitValue, addValue);
                        lineIndex++;
                    }
                }
                internalPhenoRecord.setTRAITID(traitId);
                internalPhenoRecord.setTRAITVALUE(traitValue);
                // look ahead for comment
//                if(lineIndex + 1 < lineCount){
//                    String aComment = null;
//                    if((aComment = getComment(line, lineIndex + 1)) != null){
//                        internalPhenoRecord.setCOMMENT(aComment);
//                        lineIndex = lineIndex + new StringTokenizer(aComment, "; ").countTokens();
//                    }
//                }
                // reset everything except ENTITYID and SCORER and TRAITDATE and VALSTATUS if not the end of file
                if (lineIndex + 1 < lineCount) {
                    PhenoRecord aPhenoRecordTemp = new PhenoRecord();
                    aPhenoRecordTemp.setENTITYID(internalPhenoRecord.getENTITYID());
                    aPhenoRecordTemp.setSCORER(internalPhenoRecord.getSCORER());
                    aPhenoRecordTemp.setTRAITDATE(internalPhenoRecord.getTRAITDATE());
                    aPhenoRecordTemp.setVALSTATUS(internalPhenoRecord.getVALSTATUS());
                    // add values to record store
                    PhenoRecordStore.getPhenoRecordStore().addPhenoRecord(aPhenoRecordTemp);
                }
                return lineIndex + 1;
            } // end of if(isTraitId())

            return lineIndex + 1;
        }


    private boolean isScannerCode(String[] line, int lineIndex){
        if(lineIndex >= line.length){ return false;  }
        return line[lineIndex].startsWith("vb#") ||
               line[lineIndex].startsWith("ve#") ||
               line[lineIndex].startsWith("vg#") ||
               line[lineIndex].startsWith("vf#");
    }

    private boolean isEntityId(String[] line, int lineIndex){
        if(lineIndex >= line.length){ return false;  }
        return line[lineIndex].indexOf('#') < 0 &&
               line[lineIndex].indexOf('+') < 0 &&
               line[lineIndex].indexOf("OP") < 0 &&
               line[lineIndex].indexOf("Selfed") < 0 &&
               line[lineIndex].indexOf('&') < 0;
    }
    private boolean isPollinationDescriptor(String[] line, int lineIndex){
        if(lineIndex >= line.length){ return false;  }
        return line[lineIndex].startsWith("OP") ||
               line[lineIndex].startsWith("Selfed");
    }

    private boolean isEntityIdAppendix(String[] line, int lineIndex){
        if(lineIndex >= line.length){ return false;  }
        return line[lineIndex].startsWith("%");
    }

    private boolean isTraitValueAppendix(String[] line, int lineIndex){
        if(lineIndex >= line.length){ return false;  }
        return line[lineIndex].startsWith("@");
    }


    private boolean isScorer(String[] line, int lineIndex){
        if(lineIndex >= line.length){ return false;  }
        return line[lineIndex].startsWith("va#");
    }

    private boolean isComment(String[] line, int lineIndex){
        if(lineIndex >= line.length){ return false;  }
        return line[lineIndex].startsWith("#");
    }

    private boolean isTraitId(String[] line, int lineIndex){
        if(lineIndex >= line.length){ return false;  }
        return line[lineIndex].indexOf("#") != -1;
    }

    private boolean isToolId(String[] line, int lineIndex){
        if(lineIndex >= line.length){ return false;  }
        return line[lineIndex].startsWith("vg#");
    }



    private String getComment(String[] line, int lineIndex){
        if((lineIndex >= line.length) || !isComment(line, lineIndex)  ){ // base case
            return "";
        }else{                                      // general case
            return line[lineIndex].substring(1) + "; " + getComment(line, ++lineIndex);
        }
    }

    private  boolean verifyTraitId(String line)  {
        boolean returnValue = false;
        
        String aLine = line;
        int hashIndex = aLine.indexOf("#");
        if (hashIndex != -1) {
            if (!aLine.startsWith("#") && !aLine.startsWith("&") && !aLine.startsWith("+")) {

                String subString = aLine.substring(0, hashIndex);
                if (traitID.contains(subString)) {
                    returnValue = true;
                }else{
                    System.out.println("Unable to find TRAITID: \t" + subString);
                }
            }
        }
        return returnValue;
    }

    private String addTwoStrings(String traitValue, String addValue) {
        double traitValueDouble = 0.0;
        boolean traitValueParsed = false;
        try{
            traitValueDouble = Double.parseDouble(traitValue);
            traitValueParsed = true;
        }catch(NumberFormatException nfe){  System.err.println("Could not parse " + traitValue );   }
        double addValueDouble = 0.0;
        boolean addValueParsed = false;
        try{
            addValueDouble = Double.parseDouble(addValue);
            addValueParsed = true;
        }catch(NumberFormatException nfe){  System.err.println("Could not parse " + addValue ); }
        if(traitValueParsed && addValueParsed){
            double temp = traitValueDouble + addValueDouble;
            traitValue = "" + temp;
        }
        return traitValue;
    }
}
