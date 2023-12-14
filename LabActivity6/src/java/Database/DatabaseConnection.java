/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Elaf
 */
public class DatabaseConnection {

    String url = "jdbc:mysql://localhost:3306/lifequest?useSSL=false";
    String username = "C3A_4";
    String password = "123456";
    Connection connection = null;
    PreparedStatement preparedState = null;
    ResultSet resultSet = null;
    String query = "";

    public DatabaseConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet getUserInformation(String username, String password) {

        // query = "SELECT * FROM form WHERE username='Ealoufi0015' AND password='12345678';";
        query = "SELECT * FROM account WHERE username='" + username + "' AND password='" + password + "';";
        try {
            preparedState = connection.prepareStatement(query);
            resultSet = preparedState.executeQuery();

        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);

        }
        return resultSet;

    }

    public ResultSet information() {
        query = "SELECT * FROM account;";

        try {
            preparedState = connection.prepareStatement(query);
            resultSet = preparedState.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultSet;

    }

    public void close() {
        try {
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
