/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;
/**
 *
 * @author Mohamed BOUJRAF
 */
public class Connector {
    public static void main(String[] args) {
        ConnectDb();
    }

    public static Connection ConnectDb() {
        
        Connection connection = null;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3308/GymDb?useSSL=true", "root", "");
//            JOptionPane.showMessageDialog(null, "Connection Established");
            return connection;
        } catch (ClassNotFoundException | SQLException ex) {
            JOptionPane.showMessageDialog(null, ex);
        }
        return connection;
    }
    
}
