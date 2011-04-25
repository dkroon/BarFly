/*
 * Copyright (c) 2006 Your Corporation. All Rights Reserved.
 */
package net.maizegenetics.barfly;

import javax.swing.*;
import java.awt.event.*;
import java.awt.*;
import java.io.*;
import java.sql.SQLException;

/**
 * Created by IntelliJ IDEA.
 * User: dkroon
 * Date: Feb 8, 2006
 * Time: 11:17:52 AM
 * To change this template use File | Settings | File Templates.
 */
public class ParseInputUI extends JFrame implements FocusListener{

        // Variables declaration
        private JLabel phaserIDLabel;
        private JLabel userIDLabel;
        private JTextArea userIDText;
        private JLabel flyIcon;
        private JLabel rawLabel;
        private JLabel loadDataLabel;
//        private JComboBox phaserIDCombo;
        private JTextArea rawDataText;
        private JScrollPane rawScrollPane;
        private JButton loadButton;
        private JButton bulkLoadButton;
        private JButton menuButton;
        private JPanel contentPane;
        public static final int large = 20, medium = 14, small = 10;
        // End of variables declaration


        public ParseInputUI() {
            super();
            initializeComponent();

            // NOTE: Add any constructor code after initializeComponent call

            this.setVisible(true);
        }

        /**
         * This method is called from within the constructor to initialize the form.
         * WARNING: Do NOT modify this code. The content of this method is always regenerated
         * by the Windows Form Designer. Otherwise, retrieving disign might not work properly.
         */
        private void initializeComponent() {
            phaserIDLabel = new JLabel();
            flyIcon = new JLabel();
            userIDLabel = new JLabel();
            userIDText = new JTextArea();
            rawLabel = new JLabel();
            loadDataLabel = new JLabel();
//            phaserIDCombo = new JComboBox();
            rawDataText = new JTextArea();
            rawScrollPane = new JScrollPane();
            loadButton = new JButton();
            menuButton = new JButton();
            bulkLoadButton = new JButton();
            contentPane = (JPanel) this.getContentPane();

            //
            // phaserIDLabel
            //
            phaserIDLabel.setHorizontalAlignment(SwingConstants.CENTER);
            phaserIDLabel.setHorizontalTextPosition(SwingConstants.CENTER);
            phaserIDLabel.setText("Flic ID");
            phaserIDLabel.setFont(new Font("Arial", Font.BOLD, medium));
            phaserIDLabel.setToolTipText("Select Flic ID you are loading");

            userIDLabel.setHorizontalAlignment(SwingConstants.CENTER);
            userIDLabel.setHorizontalTextPosition(SwingConstants.CENTER);
            userIDLabel.setText("User ID");
            userIDLabel.setFont(new Font("Arial", Font.BOLD, medium));
            userIDLabel.setToolTipText("Enter user last name");


            //
            // flyIcon
            //
            flyIcon.setIcon(new ImageIcon("images/g07388house.jpg"));
            //
            // rawLabel
            //
            rawLabel.setHorizontalAlignment(SwingConstants.CENTER);
            rawLabel.setHorizontalTextPosition(SwingConstants.CENTER);
            rawLabel.setText("Barcode Scans");
            rawLabel.setFont(new Font("Arial", Font.BOLD, medium));
            //
            // loadDataLabel
            //
            loadDataLabel.setHorizontalAlignment(SwingConstants.CENTER);
            loadDataLabel.setHorizontalTextPosition(SwingConstants.CENTER);
            loadDataLabel.setText("Load Raw Data");
            loadDataLabel.setFont(new Font("Arial", Font.BOLD, large));
            //
            // phaserIDCombo
            //
//            phaserIDCombo.addItem("Phaser 1");
//            phaserIDCombo.addItem("Phaser 2");
//            phaserIDCombo.addItem("Phaser 3");
//            phaserIDCombo.addItem("Phaser 4");
//            phaserIDCombo.addItem("Phaser 5");
//            phaserIDCombo.setToolTipText("Select Flic ID you are loading");
//            phaserIDCombo.addActionListener(new ActionListener() {
//                public void actionPerformed(ActionEvent e) {
//                    FlicIDCombo_actionPerformed(e);
//                }
//
//            });
            //
            // rawDataText
            //
            rawDataText.setToolTipText("Barcode scans to load");
            rawDataText.grabFocus();
            rawDataText.addFocusListener(this);
            //
            // rawScrollPane
            //
            rawScrollPane.setViewportView(rawDataText);
            //
            // loadButton
            //
            loadButton.setText("Load Text");
            loadButton.setToolTipText("Move pasted text into Barfly Database");
            loadButton.setFont(new Font("Arial", Font.BOLD, medium));
            loadButton.addActionListener(new ActionListener() {
                public void actionPerformed(ActionEvent e) {
                    loadButton_actionPerformed(e);
                }
            });

            //
            // bulkLoadButton
            //
            bulkLoadButton.setText("Load Files");
            bulkLoadButton.setToolTipText("Bulk load of scan files into Barfly Database");
            bulkLoadButton.setFont(new Font("Arial", Font.BOLD, medium));
            bulkLoadButton.addActionListener(new ActionListener() {
                public void actionPerformed(ActionEvent e) {
                    bulkLoadButton_actionPerformed(e);
                }
            });
            //
            // menuButton
            //
            menuButton.setText("Menu");
            menuButton.setToolTipText("Return to the Main Menu");
            menuButton.setFont(new Font("Arial", Font.BOLD, medium));
            menuButton.addActionListener(new ActionListener() {
                public void actionPerformed(ActionEvent e) {
                    menuButton_actionPerformed(e);
                }
            });
            //
            // contentPane
            //
            contentPane.setLayout(null);
            contentPane.setBackground(new Color(255, 255, 153));

            addComponent(contentPane, phaserIDLabel, 208, 135, 51, 27);
            addComponent(contentPane, flyIcon, 18, 13, 134, 151);
            addComponent(contentPane, rawLabel, 3, 176, 108, 53);
            addComponent(contentPane, loadDataLabel, 156, 21, 207, 83);
//            addComponent(contentPane, phaserIDCombo, 273, 137, 77, 25);
            addComponent(contentPane, rawScrollPane, 115, 177, 234, 159);
            addComponent(contentPane, loadButton, 268, 357, 109, 28);
            addComponent(contentPane, menuButton, 13, 357, 109, 28);
            addComponent(contentPane, bulkLoadButton, 140, 357, 109, 28);
            addComponent(contentPane, userIDLabel, 208, 100, 51, 27);
            addComponent(contentPane, userIDText, 273, 100, 80, 20);

            //
            // net.maizegenetics.barfly.DBUploadGUI
            //
            this.setTitle("Load Data");
//        this.setLocation(new Point(135, 51));
            this.setSize(new Dimension(433, 451));


            this.addWindowListener(new WindowAdapter() {
                /**
                 * Invoked when a window is in the process of being closed.
                 * The close operation can be overridden at this point.
                 */
                public void windowClosing(WindowEvent e) {
                    menuButton_actionPerformed(null);
                }
            });
        }

        /**
         * absolute positioning! yay!
         */
        private void addComponent(Container container, Component c, int x, int y, int width, int height) {
            c.setBounds(x, y, width, height);
            container.add(c);
        }


        private void FlicIDCombo_actionPerformed(ActionEvent e) {
            System.out.println("FlicIDCombo_actionPerformed(ActionEvent e) called.");
            int index = 4;  //phaserIDCombo.getSelectedIndex();
            switch (index) {
                case 0: /* Add any code here for "Phaser 1" being selected */
                    ;
                    break;
                case 1: /* Add any code here for "Phaser 2" being selected */
                    ;
                    break;
                case 2: /* Add any code here for "Phaser 3" being selected */
                    ;
                    break;
                case 3: /* Add any code here for "Phaser 4" being selected */
                    ;
                    break;
                case 4: /* Add any code here for "Phaser 5" being selected */
                    ;
                    break;
            }
        }

        private void loadButton_actionPerformed(ActionEvent e) {
            System.out.println("loadButton_actionPerformed(ActionEvent e) called.");


            String user = userIDText.getText();

            user.toLowerCase();
            user.trim();
            String data = rawDataText.getText();
            if (user.compareTo("") == 0 ) {
                JOptionPane.showMessageDialog(this, "Please enter a User ID",
                        "Not so fast, buddy.", JOptionPane.WARNING_MESSAGE);
                return;
            }
            if ( data.compareTo("") == 0) {
                JOptionPane.showMessageDialog(this, "Please enter some data",
                        "Not so fast, buddy.", JOptionPane.WARNING_MESSAGE);
                return;
            }

            processData( user, data, null);
        }

        /**
         *  Takes all files within a directory and attempts to load them
         *  into the BarFly DB table named "raw".  If there is no record of a scorer,
         *  i.e., no line starts with "va#", then the file will not be loaded.
         * @param e
         */
        private void bulkLoadButton_actionPerformed(ActionEvent e) {


            String user = userIDText.getText();

            user.toLowerCase();
            user.trim();

            if (user.compareTo("") == 0 ) {
                JOptionPane.showMessageDialog(this, "Please enter a last name",
                        "Not so fast, buddy.", JOptionPane.WARNING_MESSAGE);
                return;
            }

            JFileChooser fc = new JFileChooser();
            fc.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
            int returnVal = fc.showOpenDialog(this);
            if (returnVal == JFileChooser.APPROVE_OPTION) {
                File directory = fc.getSelectedFile();

                FileReader fr = null;

                if (directory.exists()) {
                    File[] directoryFile = directory.listFiles();
                    if (directoryFile.length < 1) {
                        JOptionPane.showMessageDialog(this, "Directory contains no files.");
                        return;
                    }
                    for (int i = 0; i < directoryFile.length; i++) {
                        boolean fileAccessed = false;
                        if(!directoryFile[i].isDirectory()){  // do not recurse into sub-directories
                            try {
                                fr = new FileReader(directoryFile[i]);
                                fileAccessed = true;
                            } catch (FileNotFoundException e1) {
                                e1.printStackTrace();
                            }
                        }
                        if (fileAccessed) {
                            StringBuffer scorer = null;
                            StringBuffer location = null;
                            StringBuffer scanner = null;
                            StringBuffer date = null;
                            try {
                                BufferedReader in = new BufferedReader(fr);
                                String str;

                                while ((str = in.readLine()) != null) {

                                    if (str.startsWith("va#")) {  // new scorer delimits start of new raw data entry
                                        scorer = new StringBuffer(str + "\n");
                                    }
                                    if (str.startsWith("ve#")) {
                                        location = new StringBuffer(str + "\n");
                                    }
                                    if (str.startsWith("vf#")) {
                                        scanner = new StringBuffer(str + "\n");
                                    }
                                    if (str.startsWith("vB#")) {
                                        date = new StringBuffer(str + "\n");
                                    }
                                }
                                if (scorer == null) { //  if the StringBuffer was never initialized
                                    //  then there is no scorer record in the file
                                    String msg = "File " + directoryFile[i].getName() + " does not have a " +
                                            "scorer entry so will not be loaded.  " +
                                            "Please modify the file and try loading again.";
                                    JOptionPane.showMessageDialog(this, msg, "File requires editting",
                                            JOptionPane.WARNING_MESSAGE);

                                } else {
                                    processData(user, scorer.toString(), directoryFile[i].getName());  // enter it into the db
                                }
                                in.close();
                            } catch (IOException ioe) {
                                JOptionPane.showMessageDialog(this, "Failed while reading in file: " +
                                        ioe.toString(), "File Read Failure", JOptionPane.WARNING_MESSAGE);
                            }
                        } else {
                            JOptionPane.showMessageDialog(this, "Unable to access file: " +
                                    directoryFile[i].getAbsolutePath(), "File Access", JOptionPane.ERROR_MESSAGE);
                        }
                    }// end for
                } else {
                    JOptionPane.showMessageDialog(this, "Unable to access directory: " + directory.getAbsolutePath(),
                            "Directory Not Found", JOptionPane.WARNING_MESSAGE);
                }
            }
        }


        private void menuButton_actionPerformed(ActionEvent e) {
            System.out.println("menuButton_actionPerformed(ActionEvent e) called.");
            new MenuGUI();
            this.setVisible(false);
            this.dispose();
        }


        public void focusGained(FocusEvent e) {

        }

        public void focusLost(FocusEvent e) {

            // rawDataText.requestFocus();
        }

        /**
         *
         * Common functionality for loadButton_actionPerformed() and bulkLoadButton_actionPerformed().
         * @param user
         * @param data
         */
        private void processData(String user, String data, String fileName) {

            DBInteract current = null;

            current = new DBInteract();

            int check = current.insertScans(user, fileName, data);
            switch (check) {
                case 1:
                    {
                        JOptionPane.showMessageDialog(this, "Upload successful: " + fileName, "Success", JOptionPane.INFORMATION_MESSAGE);

                        userIDText.setText("");
                        rawDataText.setText("");
                        break;
                    }
                case 0: //attempt to write to BarFly.raw database table failed, back up data to file.
                    JOptionPane.showMessageDialog(this, "Error Uploading: " + fileName + "\n" +
                            "Data has been added to 'BarFlyBackup.txt' ", "Error", JOptionPane.ERROR_MESSAGE);
                    userIDText.setText("");
                    rawDataText.setText("");
                    break;
                case -1:
                    JOptionPane.showMessageDialog(this, "There is no data to load.  Insert was terminated.");
                    userIDText.setText("");
                    rawDataText.setText("");
                    break;
            }
        }



}
