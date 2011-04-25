package net.maizegenetics.barfly;

/****************************************************************/
/*                      net.maizegenetics.barfly.PRowsGUI	                            */
/*                                                              */
/****************************************************************/
import java.awt.*;
import javax.swing.*;
import javax.swing.table.*;
/**
 * Summary description for net.maizegenetics.barfly.PRowsGUI
 *
 */
public class PRowsGUI extends JFrame
{
    // Variables declaration
    private JLabel prIcon;
    private JLabel plantingRowsLabel;
    private JTable table;
    private JScrollPane tableScrollPane;
    private JPanel contentPane;
    // End of variables declaration


    public PRowsGUI()
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
     * by the Windows Form Designer. Otherwise, retrieving design might not work properly.
     * Tip: If you must revise this method, please backup this GUI file for JFrameBuilder
     * to retrieve your design properly in future, before revising this method.
     */
    private void initializeComponent()
    {
        prIcon = new JLabel();
        plantingRowsLabel = new JLabel();
        table = new JTable();
        tableScrollPane = new JScrollPane();
        contentPane = (JPanel)this.getContentPane();

        //
        // prIcon
        //
        prIcon.setIcon(new ImageIcon("images/bot.JPG"));
        //
        // plantingRowsLabel
        //
        plantingRowsLabel.setHorizontalAlignment(SwingConstants.CENTER);
        plantingRowsLabel.setHorizontalTextPosition(SwingConstants.CENTER);
        plantingRowsLabel.setText("Planting Rows");
        //
        // table
        //

        table.setModel(new DefaultTableModel(4, 4));
        table.setRowSelectionAllowed(false);
        //
        // tableScrollPane
        //
        tableScrollPane.setViewportView(table);
        //
        // contentPane
        //
        contentPane.setLayout(null);
        contentPane.setBackground(new Color(255, 255, 153));
        addComponent(contentPane, prIcon, 10,5,135,109);
        addComponent(contentPane, plantingRowsLabel, 157,19,312,62);
        addComponent(contentPane, tableScrollPane, 52,131,623,118);
        //
        // net.maizegenetics.barfly.PRowsGUI
        //
        this.setTitle("Planting Rows");
        this.setLocation(new Point(0, 0));
        this.setSize(new Dimension(700, 300));
        this.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
    }

    /** Add Component Without a Layout Manager (Absolute Positioning) */
    private void addComponent(Container container,Component c,int x,int y,int width,int height)
    {
        c.setBounds(x,y,width,height);
        container.add(c);
    }









}

