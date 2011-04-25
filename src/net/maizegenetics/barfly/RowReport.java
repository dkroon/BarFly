package net.maizegenetics.barfly;

import javax.swing.*;
import java.util.Arrays;
import java.util.Set;
import java.util.HashSet;
import java.util.TreeSet;
import java.awt.event.FocusListener;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 * User: dkroon
 * Date: Jun 16, 2006
 * Time: 11:25:51 AM
 */
public class RowReport {
    private StringBuffer finalResult = new StringBuffer();
    private String locationPrefix;
    private boolean showPopulationName = false;
    private boolean showMinimal;
    private int minLengthToShow;
    private int totalNumberOfDigitsInRow;
    private String latticeTable;

    /**
     *
     * @param rows              rows that are missing
     * @param locationPrefixIn  location-specific prefix which preceeds the row number
     * @param totalNumberOfDigitsInRowIn    for padding raw row numbers
     * @param latticeTableIn    name of lattice table (for determining population name
     * @param showMinimalIn     flag to not show each missing row
     * @param minLengthToShowIn if showMinimalIn is true, then this specifies cutoff for showing a block of missed rows
     */
    public RowReport(int[] rows, String locationPrefixIn, int totalNumberOfDigitsInRowIn, String latticeTableIn, boolean showMinimalIn, int minLengthToShowIn){
        this.locationPrefix = locationPrefixIn;
        latticeTable = latticeTableIn;
        showMinimal = showMinimalIn;
        minLengthToShow = minLengthToShowIn;
        this.totalNumberOfDigitsInRow = totalNumberOfDigitsInRowIn;
        generateRowReportBasic(rows);
//        generateRowReport(rows, true);
//        generateAlternateRowReport(rows);
    }

    private void generateRowReport(int[] rowsIn) {
        Arrays.sort(rowsIn);

        int min = -1, max = -1, tester = 0;

        boolean inARun = false;
        for (int i = 0; i < rowsIn.length; i++) {

            // check to see if the next highest is only one away from
            // the last, if so, push the index higher until either
            // one runs out of rowsIns or the streak is broken

            // initialize it at the beginning
            if (min == -1) {
                min = rowsIn[i];
            }

            if (i + 1 < rowsIn.length) {
                if ((rowsIn[i + 1] - rowsIn[i] == 1)) {  // && (min == -1)
                    tester = rowsIn[i + 1];
                    inARun = true;
                } else { //move the min up one
                    if (inARun) { // just broke a streak, set the results
                        addResult(min, tester, showMinimal, false, null);
                        min = rowsIn[i + 1];
                        tester = 0; //reset the tester
                        inARun = false;
                    }
                    else{
                        if(!showMinimal){
                            addResult(reconstituteFullRowName(min));
                        }
                        min = rowsIn[i + 1];
                    }
                }
            } else { // i + 1 == rowsIn.length  - you are at the end of the rowsIn
                if(inARun){
                    addResult(min,tester+1, showMinimal, false, null);
                }
                else{
                    addResult(reconstituteFullRowName(min));
                }
            }
        }
    }

     private void generateRowReportBasic(int[] rowsIn) {
        Arrays.sort(rowsIn);

        int min = -1, max = -1, tester = 0;

        boolean inARun = false;
        for (int i = 0; i < rowsIn.length; i++) {

            // check to see if the next highest is only one away from
            // the last, if so, push the index higher until either
            // one runs out of rowsIns or the streak is broken

            // initialize it at the beginning
            if (min == -1) {
                min = rowsIn[i];
            }

            if (i + 1 < rowsIn.length) {
                if ((rowsIn[i + 1] - rowsIn[i] == 1)) {  // && (min == -1)
                    tester = rowsIn[i + 1];
                    inARun = true;
                } else { //move the min up one
                    if (inARun) { // just broke a streak, set the results
                        addResult(min, tester);
                        min = rowsIn[i + 1];
                        tester = 0; //reset the tester
                        inARun = false;
                    }
                    else{
                        addResult(reconstituteFullRowName(min));

                        min = rowsIn[i + 1];
                    }
                }
            } else { // i + 1 == rowsIn.length  - you are at the end of the rowsIn
                if(inARun){
                    addResult(min,tester+1);
                }
                else{
                    addResult(reconstituteFullRowName(min));
                }
            }
        }
    }


       private void generateRowReport(int[] rowsIn, boolean showAlternatingMissingRows) {
           Arrays.sort(rowsIn);
           int[] rows = new int[rowsIn.length];
           rows[0] = rowsIn[0];
           int index = 0;
           for(int i=1; i < rowsIn.length; i++){
                if(rows[index] != rows[i]){
                    rows[index++] = rows[i];
                }
           }

           int[] row = new int[index];
           System.arraycopy(rows,0,row,0, index);

//           for (int i = 0; i < rowsIn.length;) {
//               //look at end with one step and two step alternation
//               int endOne = 0; //getLastRow(rowsIn, 1, i);
//               int endTwo = getLastRow(rowsIn, 2, i);
//
//               if (endTwo < endOne) {  // then this is a regular series
//                   addResult(i, endOne, showMinimal, false);
//                   i = endOne + 1;
//               } else if (endOne < endTwo) {  // then this is an alternating series
//                   addResult(i, endTwo, showMinimal, true);
//                   i = endTwo + 1;
//               } else if (endOne == endTwo) {  //then there is no series
//                   i++;
//               }
//           }


         int min = -1, max = -1, testerOneStep = 0, testerTwoStep =0;

         int oddCount =0, evenCount =0;

         boolean inRun = false;
         boolean isAlternatingRun = false;
         for (int i = 0; i < row.length; i++) {

             // check to see if the next highest is only one away from
             // the last, if so, push the index higher until either
             // one runs out of rows or the streak is broken

             // initialize it at the beginning
             if (min == -1) {
                 min = row[i];
             }

             if (i + 1 < row.length) {
                 if ((row[i + 1] - row[i] == 1)) {  // && (min == -1)
                     testerOneStep = row[i + 1];
                     inRun = true;
                 } else {
                     if ((row[i + 1] - row[i] == 2) && showAlternatingMissingRows) {
                         testerTwoStep = row[i + 1];
                         isAlternatingRun = true;
                         if (row[i] % 2 == 0) {
                             evenCount++;
                         } else {
                             oddCount++;
                         }
                     } else {
                         if (inRun || isAlternatingRun) { // just broke a streak, set the results

                             int end = 0;
                             if (isAlternatingRun) {
                                 end = testerTwoStep + 2;
                             } else {
                                 end = testerOneStep + 1;
                             }
                             addResult(min, end, showMinimal, isAlternatingRun, evenCount > oddCount ? "even" : "odd");
                             min = row[i + 1]; //move the min up one
                             testerOneStep = 0; //reset the testers
                             testerTwoStep = 0;
                             inRun = false;
                             isAlternatingRun = false;
                         } else {
                             if (!showMinimal) {
                                 addResult(reconstituteFullRowName(min));
                             }
                             min = row[i + 1];
                         }
                     }
                 }

             } else { // i + 1 == row.length  - you are at the end of the row array
                 if(inRun || isAlternatingRun){
                     int end = 0;
                     if(isAlternatingRun){
                         end = testerTwoStep + 2;
                     }else{
                         end = testerOneStep + 1;
                     }
                     addResult(min,end, showMinimal, isAlternatingRun, (evenCount > oddCount?"even":"odd") );
                 }
                 else{
                     addResult(reconstituteFullRowName(min));
                 }
             }
         }
     }


    private int getLastRow(int[] rows, int stepSize, int index){
        int lastRow = index;
        boolean done = false;

            while(  !done && ( (rows[index + 1] - rows[index] == stepSize)  || (rows[index + 1] - rows[index] == 0) ) ) {
//                System.out.println("rows[" + index + "]: " + rows[index]);
                if(index + 1 < rows.length){
                    lastRow = getLastRow(rows, stepSize, index + 1);
                    index = lastRow;
                }else{
                    done = true;
                }

            }

        return lastRow;
    }

    private void generateAlternateRowReport(int[] rowsIn) {
            Arrays.sort(rowsIn);

            int min = -1, max = -1, tester = 0;

            boolean inRun = false;
            for (int i = 0; i < rowsIn.length; i++) {

                // check to see if the next highest is only one away from
                // the last, if so, push the index higher until either
                // one runs out of rowsIns or the streak is broken

                // initialize it at the beginning
                if (min == -1) {
                    min = rowsIn[i];
                }

                if (i + 1 < rowsIn.length) {
                    if ((rowsIn[i + 1] - rowsIn[i] == 2)) {  // && (min == -1)
                        tester = rowsIn[i + 1];
                        inRun = true;
                    } else { //move the min up one
                        if (inRun) { // just broke a streak, set the results
                            addResult(min, tester, showMinimal, true, null);
                            min = rowsIn[i + 1];
                            tester = 0; //reset the tester
                            inRun = false;
                        }
                        else{
                            if(!showMinimal){
                                addResult(reconstituteFullRowName(min));
                            }
                            min = rowsIn[i + 1];
                        }
                    }
                } else { // i + 2 == rowsIn.length  - you are at the end of the rowsIn
                    if(inRun){
                        addResult(min,tester + 1, showMinimal, true, null);
                    }
                    else{
                        addResult(reconstituteFullRowName(min));
                    }
                }
            }
        }


    private void addResult(String value){
        if(showPopulationName){
            finalResult.append("\n" + value + "\t" + getPopulationName(value) );
        }else{
            finalResult.append("\n" + value );
        }
    }

    private void addResult(int start, int end){
        int length = -1;
        String newResult = reconstituteFullRowName(start) + " - " + reconstituteFullRowName(end);
        String populationNames = null;
        if( showPopulationName){
            populationNames = getPopulationName(reconstituteFullRowName(start)) +
                                            " - " + getPopulationName(reconstituteFullRowName(end));
        }else{
            length = (end - start) + 1;

            populationNames = Integer.toString(length);
        }

        if( length >= minLengthToShow){
            finalResult.append("\n" + newResult + "\t" + populationNames);
        }
    }

    private void addResult(int start, int end, boolean showMinimalIn, boolean isAlternateRow, String oddOrEven){
        int length = -1;
        String newResult = reconstituteFullRowName(start) + " - " + reconstituteFullRowName(end);
        String populationNames = null;
        if(!showMinimalIn  && showPopulationName){
            populationNames = getPopulationName(reconstituteFullRowName(start)) + " - " + getPopulationName(reconstituteFullRowName(end));
        }else{
            length = (end - start) + 1;
            if(isAlternateRow){ length = length/2; }
            populationNames = Integer.toString(length);
        }

        if (isAlternateRow){
            populationNames = populationNames + " * AR " + oddOrEven;
        }
        if( length >= minLengthToShow){
            finalResult.append("\n" + newResult + "\t" + populationNames);
        }
    }


    private String reconstituteFullRowName(int rowNum) {
        String unpaddedNumber = new Integer(rowNum).toString();
        //create the left padding
        int paddingNeeded = totalNumberOfDigitsInRow - unpaddedNumber.length();
        String paddingZeros = "";
        for (int j = 0; j < paddingNeeded; j++) {
            paddingZeros = paddingZeros + "0";
        }
        return getLocationPrefix() + paddingZeros + rowNum;
    }

    private String getPopulationName(String rowID){

        String popName = null;
        Connection conn = null;
        Statement stmt = null;
        boolean resultsExist = false;
        String sql = "SELECT " + latticeTable + ".entity_id, pops.short_name " +
                "FROM " + latticeTable + " INNER JOIN pops ON " + latticeTable + ".pop = pops.pop_id " +
                "WHERE (((" + latticeTable + ".entity_id)='" + rowID + "'));";
//        System.out.println("sql = " + sql);
        try {
            conn = DBConnection.getConnection();
            stmt = conn.createStatement();
            resultsExist = stmt.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        ResultSet rs = null;
        if(resultsExist){
            try {
                rs = stmt.getResultSet();
                rs.next();

                popName = rs.getString("short_name");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(popName == null){
            popName = "";
        }
        return popName;
    }

    private String getLocationPrefix(){
        return this.locationPrefix;
    }

    public String toString() {
        return finalResult.toString();
    }
}
