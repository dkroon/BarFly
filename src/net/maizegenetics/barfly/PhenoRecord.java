package net.maizegenetics.barfly;

/**
 * Created by IntelliJ IDEA.
 * User: Susan Romero
 * Date: Jun 7, 2005
 * Time: 8:26:46 AM
 *
 */
public class PhenoRecord {
    private String ENTITYID, TRAITID, TRAITNAME, TRAITVALUE, TRAITDATE, SCORER, VALSTATUS, COMMENT;

    public PhenoRecord(){};

    public PhenoRecord(String ENTITYID, String TRAITID, String TRAITNAME,
                       String TRAITVALUE, String TRAITDATE, String SCORER, String VALSTATUS, String COMMENT) {
        this.setENTITYID(ENTITYID);
        this.setTRAITID(TRAITID);
        this.setTRAITNAME(TRAITNAME);
        this.setTRAITVALUE(TRAITVALUE);
        this.setTRAITDATE(TRAITDATE);
        this.setSCORER(SCORER);
        this.setVALSTATUS(VALSTATUS);
        this.setCOMMENT(COMMENT);

        if(ENTITYID== null || ENTITYID ==""){this.setVALSTATUS("ERROR");}
        if(TRAITID== null || TRAITID ==""){this.setVALSTATUS("ERROR");}
        if(TRAITDATE== null || TRAITDATE =="00/00/0000"){this.setVALSTATUS("CHECK");}
    }

    public String getENTITYID() {
        return ENTITYID;
    }

    public void setENTITYID(String ENTITYID) {
        this.ENTITYID = ENTITYID;
    }

    public String getVALSTATUS() {
        return VALSTATUS;
    }

    public void setVALSTATUS(String VALSTATUS) {
        this.VALSTATUS = VALSTATUS;
    }

    public String getSCORER() {
        return this.SCORER;
    }

    public void setSCORER(String SCORER) {
        this.SCORER = SCORER;
    }

    public String getTRAITDATE() {
        return this.TRAITDATE;
    }

    public void setTRAITDATE(String TRAITDATE) {
        this.TRAITDATE = TRAITDATE;
    }

    public String getTRAITNAME() {
        return this.TRAITNAME;
    }

    public void setTRAITNAME(String TRAITNAME) {
        this.TRAITNAME = TRAITNAME;
    }

    public String getTRAITID() {
        return this.TRAITID;
    }

    public void setTRAITID(String TRAITID) {
        this.TRAITID = TRAITID;
    }

    public String getTRAITVALUE() {
        return this.TRAITVALUE;
    }

    public void setTRAITVALUE(String TRAITVALUE) {
        this.TRAITVALUE = TRAITVALUE;
    }

    public String getCOMMENT() {
        return this.COMMENT;
    }

    public void setCOMMENT(String COMMENT) {
        this.COMMENT = COMMENT;
    }

    public String toString(){
        return getENTITYID() + "\t" + getTRAITID() + "\t" +  getTRAITNAME() + "\t" + getTRAITVALUE() + "\t" +
                getTRAITDATE() + "\t" + getSCORER() + "\t" + getVALSTATUS()  + "\t" + getCOMMENT();
    }
}
