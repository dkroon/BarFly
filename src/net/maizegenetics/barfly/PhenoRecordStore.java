package net.maizegenetics.barfly;

import net.maizegenetics.barfly.PhenoRecord;

import java.util.*;

/**
 * User: dkroon
 * Date: Nov 21, 2006
 * Time: 1:45:43 AM
 */
public class PhenoRecordStore {
    private static PhenoRecordStore rfp = null;
    private ArrayList phenoRecord = null;
    private Map phenoRecordMap = null;

    private PhenoRecordStore(){
            phenoRecord = new ArrayList();
    }

    public static PhenoRecordStore getPhenoRecordStore(){
        if(rfp == null){
            rfp = new PhenoRecordStore();
        }
        return rfp;
    }

    public void addPhenoRecord(PhenoRecord pr){
        phenoRecord.add(pr);
    }

    public PhenoRecord getLastPhenoRecord(){
        return (PhenoRecord) phenoRecord.get(phenoRecord.size()-1);
    }

    public PhenoRecord[] getAllPhenoRecords(){
        PhenoRecord[] pr = (PhenoRecord[])phenoRecord.toArray(new PhenoRecord[phenoRecord.size()]);
        phenoRecord.clear();
        return pr;
    }
    public ArrayList getPhenoRecordArrayList(){
        return phenoRecord;
    }

    /**
     * entityID-keyed map containing traitID-keyed maps containing PhenoRecords of the same entityID
     * @return
     */
    public Map getPhenoRecordMap(){
        if(phenoRecordMap == null){

            phenoRecordMap = new HashMap(phenoRecord.size());
            Iterator it = phenoRecord.iterator();
            while(it.hasNext()){
                PhenoRecord aPhenoRecord = (PhenoRecord)it.next();
                String entityID = aPhenoRecord.getENTITYID();
                if(phenoRecordMap.containsKey(entityID)){
                    ((Map)phenoRecordMap.get(entityID)).put(aPhenoRecord.getTRAITID(), aPhenoRecord );
                }else{
                    // populate phenoRecordMap with a new copy
                    HashMap traitIDMap = new HashMap();
                    traitIDMap.put(aPhenoRecord.getTRAITID(), aPhenoRecord);
                    phenoRecordMap.put(entityID, traitIDMap);
                }
            }
        }
        return phenoRecordMap;
    }

    public boolean isEmpty(){
        return phenoRecord.isEmpty();
    }
}
