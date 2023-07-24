import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.LayoutManager;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class gui {

    public gui() {
        JFrame frame = new JFrame();
        JPanel panel = new JPanel();
        JButton button1 = new JButton("Recursive Trees");
        panel.setBorder(BorderFactory.createEmptyBorder(30,30,10,30));
        panel.setLayout(new GridLayout(2,2));
        panel.add(button1);
        frame.add(panel, BorderLayout.CENTER);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Generative Art");
        frame.pack();
        frame.setVisible(true);
    
    }


    public static void main(String[] args) {
        new gui();

    }





}
