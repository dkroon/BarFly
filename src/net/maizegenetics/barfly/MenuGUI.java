package net.maizegenetics.barfly;

/**
 * DATA: load data, error check
 * FIELD: View Planting Rows
 *
 */

/****************************************************************/
/*                      net.maizegenetics.barfly.MenuGUI	                            */
/*                                                              */
/****************************************************************/

//import net.maizegenetics.barfly.reporting.ParseGUI;
//import net.maizegenetics.barfly.reporting.RowTraitReportGUI;

import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.nio.channels.FileChannel;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import javax.swing.*;

/**
 * Summary description for net.maizegenetics.barfly.MenuGUI
 *
 */
public class MenuGUI extends JFrame
{
    // Variables declaration
    private JLabel barFlyLabel;
    private JLabel descLabel;
    private JLabel phenoLabel;
    private JLabel fieldLabel;
    private JLabel flyIcon;
    private JLabel dbLabel;
    private JButton loadData;
    private JButton parseButton;
    private JButton pRowsButton;
    private JButton missingButton;
    private JPanel contentPane;
    private JButton bUpButton;
    private String patternStr = "([a-zA-Z]+[0-9]+)";
    // End of variables declaration


    public MenuGUI()
    {
        super();
        initializeComponent();
        //
        // TODO: Add any constructor code after initializeComponent call
        //

        this.setVisible(true);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always regenerated
     * by the Windows Form Designer. Otherwise, retrieving disign might not work properly.
     */
    private void initializeComponent()
    {
        barFlyLabel = new JLabel();
        descLabel = new JLabel();
        phenoLabel = new JLabel();
        fieldLabel = new JLabel();
        flyIcon = new JLabel();
        dbLabel = new JLabel();
        loadData = new JButton();
        parseButton = new JButton();
        pRowsButton = new JButton();
        missingButton = new JButton();
        bUpButton= new JButton();
        contentPane = (JPanel)this.getContentPane();

        //
        // barFlyLabel
        //
        barFlyLabel.setHorizontalAlignment(SwingConstants.CENTER);
        barFlyLabel.setHorizontalTextPosition(SwingConstants.CENTER);
        barFlyLabel.setText("BarFly ");
        barFlyLabel.setFont(new Font("Arial",Font.BOLD, DBUploadGUI.large));
        //
        // descLabel
        //
        descLabel.setHorizontalAlignment(SwingConstants.CENTER);
        descLabel.setHorizontalTextPosition(SwingConstants.CENTER);
        descLabel.setText("Field Data Management");
        descLabel.setFont(new Font("Arial",Font.ITALIC, DBUploadGUI.medium ));
        //
        // phenoLabel
        //
        phenoLabel.setHorizontalAlignment(SwingConstants.CENTER);
        phenoLabel.setHorizontalTextPosition(SwingConstants.CENTER);
        phenoLabel.setText("Phenotypes");
        phenoLabel.setFont(new Font("Arial",Font.BOLD, DBUploadGUI.medium  ));
        //
        // fieldLabel
        //
        fieldLabel.setHorizontalAlignment(SwingConstants.CENTER);
        fieldLabel.setHorizontalTextPosition(SwingConstants.CENTER);
        fieldLabel.setText("Field Info ");
        fieldLabel.setFont(new Font("Arial",Font.BOLD, DBUploadGUI.medium  ));

        dbLabel.setHorizontalAlignment(SwingConstants.CENTER);
        dbLabel.setHorizontalTextPosition(SwingConstants.CENTER);
        dbLabel.setText("Database Functions");
        dbLabel.setFont(new Font("Arial",Font.BOLD, DBUploadGUI.medium  ));

        //
        // flyIcon
        //
        flyIcon.setHorizontalAlignment(SwingConstants.CENTER);
        flyIcon.setHorizontalTextPosition(SwingConstants.CENTER);
        ImageIcon ii = new ImageIcon("images/fly1.jpg");
        flyIcon.setIcon(ii);
        //
        // loadData
        //
        loadData.setText("Load Data");
        loadData.setFont(new Font("Arial",Font.BOLD, DBUploadGUI.medium  ));
        loadData.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e)
            {
                LoadData_actionPerformed(e);
            }

        });
        //
        // parseButton
        //
        parseButton.setHorizontalTextPosition(SwingConstants.CENTER);
        parseButton.setText("Parse Data");
        parseButton.setFont(new Font("Arial",Font.BOLD, DBUploadGUI.medium  ));
        parseButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e)
            {
                ParseButton_actionPerformed(e);
            }

        });
        //
        // pRowsButton
        //
        pRowsButton.setHorizontalTextPosition(SwingConstants.CENTER);
        pRowsButton.setText("Planting Rows");
        pRowsButton.setFont(new Font("Arial",Font.BOLD, DBUploadGUI.medium  ));

        pRowsButton.setEnabled(false);
//        pRowsButton.addActionListener(new ActionListener() {
//            public void actionPerformed(ActionEvent e)
//            {
//                PRowsButton_actionPerformed(e);
//            }
//
//        });


        //
        // missingButton
        //
        missingButton.setHorizontalTextPosition(SwingConstants.CENTER);
//        missingButton.setText("Missing Data");
        missingButton.setText("Show Report");
//        missingButton.setText("Verify Packets");
        missingButton.setFont(new Font("Arial",Font.BOLD, DBUploadGUI.medium  ));
        missingButton.setEnabled(false);
        missingButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e)
            {
                reportButton_actionPerformed(e);
//                verifyPackets_actionPerformed(e);
//                deleteDuplicatesButton_actionPerformed(e);
            }
        });

        bUpButton.setHorizontalTextPosition(SwingConstants.CENTER);
        bUpButton.setText("Find Bad Characters");
        bUpButton.setFont(new Font("Arial",Font.BOLD, DBUploadGUI.medium  ));
        bUpButton.setEnabled(false);
        bUpButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e){
                bUpButton_actionPerformed(e);
            }
        });
        //
        // contentPane
        //
        contentPane.setLayout(null);
        contentPane.setBackground(new Color(255, 255, 153));
        addComponent(contentPane, barFlyLabel, 13,3,151,53);
        addComponent(contentPane, descLabel, 13,57,156,37);
        addComponent(contentPane, phenoLabel, 16,154,150,30);
        addComponent(contentPane, fieldLabel, 207,155,150,30);
        addComponent(contentPane, dbLabel,180,241,200,30);
        addComponent(contentPane, flyIcon, 189,12,177,134);
        addComponent(contentPane, loadData, 15,201,150,30);
        addComponent(contentPane, parseButton, 13,241,150,30);
        addComponent(contentPane, pRowsButton, 206,199,150,30);
        addComponent(contentPane, missingButton, 12,281,150,30);
        addComponent(contentPane,bUpButton, 206,281,150,30);
        //
        // net.maizegenetics.barfly.MenuGUI
        //
        this.setTitle("Main Menu");
        this.setLocation(new Point(0, 0));
        this.setSize(new Dimension(389, 362));
        this.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
    }



    /** Add Component Without a Layout Manager (Absolute Positioning) */
    private void addComponent(Container container,Component c,int x,int y,int width,int height)
    {
        c.setBounds(x,y,width,height);
        container.add(c);
    }


    private void LoadData_actionPerformed(ActionEvent e)
    {
        System.out.println("LoadData_actionPerformed(ActionEvent e) called.");
        new DBUploadGUI() ;
        this.setVisible(false);
        this.dispose();

    }

    private void ParseButton_actionPerformed(ActionEvent e)
    {
        System.out.println("ParseButton_actionPerformed(ActionEvent e) called.");

        DBInteract dbi = new DBInteract();
        dbi.parseRawData();

//        new BarCodeGUI();
//        this.setVisible(false);
//        this.dispose();
    }

    private void PRowsButton_actionPerformed(ActionEvent e)
    {
        System.out.println("PRowsButton_actionPerformed(ActionEvent e) called.");

        new PRowsGUI();
        this.setVisible(false);
        this.dispose();
    }

    private void reportButton_actionPerformed(ActionEvent e)
    {
        System.out.println("reportButton_actionPerformed(ActionEvent e) called.");

//        RowTraitReportGUI rtr = new RowTraitReportGUI();
//        rtr.setVisible(true);
//        this.setVisible(false);
//        this.dispose();

    }

    private void verifyPackets_actionPerformed(ActionEvent e)
    {
//        new ParseGUI();
        this.setVisible(false);
        this.dispose();
    }

    /**
     * used to find duplicate in 2005 field data
     */
//    private void deleteDuplicatesButton_actionPerformed(ActionEvent e)
//       {
//           DBInteract db = null;
//
//           try {
//               db =new DBInteract();
//           } catch (SQLException e1) {
//               e1.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
//           }
//
//           int records = db.deleteDuplicates();
//
//           JOptionPane.showMessageDialog(this, "Deleted " + records + " duplicates");
//
//       }


    private void bUpButton_actionPerformed(ActionEvent e) {
        JFileChooser fc = new JFileChooser();
        fc.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
        int returnVal = fc.showOpenDialog(this);
        if (returnVal == JFileChooser.APPROVE_OPTION) {
            File directory = fc.getSelectedFile();

            CharBuffer cbuf = null;

            if (directory.exists()) {
                File[] directoryFile = directory.listFiles();
                if (directoryFile.length < 1) {
                    JOptionPane.showMessageDialog(this, "Directory contains no files.");
                    return;
                }
                for (int i = 0; i < directoryFile.length; i++) {
                    boolean fileAccessed = false;
                    if(!directoryFile[i].isDirectory()){  // do not recurse into sub-directories
                        FileInputStream fis = null;
                        try {
                            fis = new FileInputStream(directoryFile[i]);
                            fileAccessed = true;
                        } catch (FileNotFoundException e1) {
                            e1.printStackTrace();
                        }

                        try{
                            FileChannel fileChannel = fis.getChannel();
                            // Create a read-only CharBuffer on the file
                            ByteBuffer bbuf = fileChannel.map(FileChannel.MapMode.READ_ONLY, 0, (int)fileChannel.size());
                            cbuf = Charset.forName("8859_1").newDecoder().decode(bbuf);

                        }catch(IOException ioe){
                            ioe.printStackTrace();
                        }
                    }
                    if (fileAccessed) {
                        // Compile regular expression
                        Pattern pattern = Pattern.compile(patternStr);

                        // Determine if pattern exists in input
                        Matcher matcher = pattern.matcher(cbuf);
//                            boolean matchFound = matcher.find();    // true
                        while (!matcher.matches()) {
//                            System.out.println("directoryFile[" + i + "]: " + directoryFile[i]);
//                            System.out.println("matcher.toMatchResult() = " + matcher.toMatchResult());
//                            System.out.println("cbuf = " + cbuf);
//
//                            System.exit(120);
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
}



































