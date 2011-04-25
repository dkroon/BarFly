package net.maizegenetics.barfly;

import java.sql.SQLException;

/**
 * Created by IntelliJ IDEA.
 * User: dkroon
 * Date: Jul 18, 2006
 * Time: 9:26:34 PM
 */
public class BarFlyRemoteParser {
    public BarFlyRemoteParser(){
        DBInteract dbi = new DBInteract();
        dbi.parseRawData();
    }
    public static void main(String[] args) {
        new BarFlyRemoteParser();
    }
}
