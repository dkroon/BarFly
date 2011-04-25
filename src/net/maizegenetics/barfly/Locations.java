package net.maizegenetics.barfly;

import java.util.Map;
import java.util.TreeMap;
import java.util.Set;
import java.util.HashMap;

/**
 * User: dkroon
 * Date: Jan 19, 2007
 * Time: 12:05:59 PM
 */
public class Locations {
    private static TreeMap locationPrefix2006 = new TreeMap();
    private static final int numberOfDigits2006 = 4;
    private static int[] years = { 2006 };

    static{

        locationPrefix2006.put(new Integer(1), "06CL1");
        locationPrefix2006.put(new Integer(2), "06CL1");
        locationPrefix2006.put(new Integer(3), "26M3");
        locationPrefix2006.put(new Integer(4), "06A");
        locationPrefix2006.put(new Integer(5), "065");
        locationPrefix2006.put(new Integer(6), "06FL1");
        locationPrefix2006.put(new Integer(7), "06PR");

    }

    public String getLocationPrefix(int year, int locationNumber) {
        TreeMap theMap = null;
        if(year == 2006){theMap = locationPrefix2006;  }

         return (String)theMap.get(new Integer(locationNumber));
     }

    public Integer[] getLocationNumbers(int year){
        TreeMap theMap = null;
        if(year == 2006){theMap = locationPrefix2006;  }

        Integer[] locationNum = new Integer[theMap.size()];
        theMap.keySet().toArray(locationNum);
        return locationNum;
    }

    public static int getNumberOfDigitsInRowID(int year){
        int theValue = 4;
        if(year == 2006){
            theValue = numberOfDigits2006;
        }
        return theValue;
    }

    /**
     * Returns collection of row ids for a given year and location
     * @param year
     * @param location
     * @return
     */

    public Map getRows(int year, int location){
        int rowStart = 0, rowEnd = 0,  totalNumberOfDigits = 0;

        if(year==2006){
            rowStart = 1;
            rowEnd = 6028;
            totalNumberOfDigits = numberOfDigits2006;
        if(location == 2){
             rowStart = 6029;
             rowEnd = 7656;
         }
        }
        return generateKeyedMap(rowStart,rowEnd, totalNumberOfDigits, getLocationPrefix(year, location) );
    }
    /**
     *
     * @param start first key
     * @param stop  last key
     * @param digits  total number of digits following the location prefix; for padding
     * @return
     */
    private static Map generateKeyedMap(int start, int stop, int digits, String fieldPrefix){
        HashMap keyedMap = new HashMap();

        for(int i = start; i < stop; i++){

            String unpaddedNumber = new Integer(i).toString();
            //create the left padding
            int paddingNeeded = digits - unpaddedNumber.length();
            String paddingZeros = "";
            for(int j = 0; j < paddingNeeded; j++){
                paddingZeros = paddingZeros + "0";
            }

            keyedMap.put(fieldPrefix + paddingZeros + unpaddedNumber, null);
        }

        return keyedMap;
    }

    public int[] getYears(){

        return years;
    }
}
