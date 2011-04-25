package net.maizegenetics.barfly;

//import net.maizegenetics.barfly.reporting.RowReportUI;

import javax.swing.JFrame;
import javax.swing.*;
import java.awt.BorderLayout;
import java.awt.Toolkit;

/**
 * <p>Title: </p>
 *
 * <p>Description: </p>
 *
 * <p>Copyright: Copyright (c) 2007</p>
 *
 * <p>Company: </p>
 *
 * @author not attributable
 * @version 1.0
 */
public class MyApp extends JFrame {
    public MyApp() {
        try {
            jbInit();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public static void main(String[] args) {
        MyApp myapp = new MyApp();
        //RowReportUI rr = new RowReportUI();
        //myapp.getContentPane().add(rr,BorderLayout.CENTER);

        // Get the native look and feel class name
    String nativeLF = UIManager.getSystemLookAndFeelClassName();

    // Install the look and feel
    try {
        UIManager.setLookAndFeel(nativeLF);
    } catch (InstantiationException e) { e.printStackTrace();
    } catch (ClassNotFoundException e) { e.printStackTrace();
    } catch (UnsupportedLookAndFeelException e) { e.printStackTrace();
    } catch (IllegalAccessException e) { e.printStackTrace();
    }

        myapp.pack();
        int width = Toolkit.getDefaultToolkit().getScreenSize().width;
        System.out.println("width: " + width);
        int height = Toolkit.getDefaultToolkit().getScreenSize().height;
        System.out.println("height: " + height);
        double mult = (double)700/(double)800;

        double newHeight = height * mult;
        double newWidth = width * mult;

        myapp.setSize((int)newWidth, (int)newHeight);
        myapp.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        myapp.setVisible(true);


    }

    private void jbInit() throws Exception {
    }
}
