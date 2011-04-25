package net.maizegenetics.barfly;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * User: dkroon
 * Date: Aug 22, 2005
 * Time: 4:21:40 PM
 */
public class DBConnection {

    private static Connection conn;

    private DBConnection(){

        boolean succeeded = false;

        // load the driver you wish to use
        // You do not need to create an instance of a driver and register it with the
        // DriverManager because calling Class.forName will do that for you automatically.

        String driver = "org.gjt.mm.mysql.Driver";

        String urlMays = "";       // mays
        try {
            Class.forName(driver).newInstance();
        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }

        // DriverManager manages all of the details of
        // establishing the connection for you behind the scenes

        try {
            conn = DriverManager.getConnection(urlMays, "username", "password");
            succeeded = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (succeeded) {
            System.out.println("Successfully connected to MySQL server...");
        }else{
            System.out.println("Could not connect to MySQL server.  Exiting to system.");
            System.exit(0);

        }
    }
    public static Connection getConnection()
    {
        if(conn == null)
        {
            new DBConnection();
        }
        return conn;
    }
}
