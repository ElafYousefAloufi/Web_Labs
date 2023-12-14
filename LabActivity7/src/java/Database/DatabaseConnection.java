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

    String url = "jdbc:mysql://localhost:3306/elafaloufi_1911265?useSSL=false";
    String username = "root";
    String password = "E0509117257e";
    Connection connector = null;
    PreparedStatement preparedState = null;
    ResultSet resultSet = null;
    String query = "";

    public DatabaseConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connector = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //show 
    public ResultSet showInfo() {
        query = "SELECT * FROM info;";

        try {
            preparedState = connector.prepareStatement(query);
            resultSet = preparedState.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultSet;

    }

    //insert
    public int insertInfo(int id, String username, String password) {
        query = "insert into info(id, username, password)values('" + id + "','" + username + "','" + password + "');";
        int i = -1;
        try {
            Statement stmt = connector.createStatement();
            i = stmt.executeUpdate(query);

        } catch (Exception e) {
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;
    }

    public int updateInfo(int id, String username, String password) {
        query = "update info set username= '" + username + "' , password= '" + password + "' where id= " + id + ";";
        int i = -1;
        try {
            Statement stmt = connector.createStatement();
            i = stmt.executeUpdate(query);

        } catch (Exception e) {
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;

    }

    public int deleteInfo(int id) {
        query = "delete from info where id=" + id + ";";
        int i = -1;
        try {
            Statement stmt = connector.createStatement();
            i = stmt.executeUpdate(query);

        } catch (Exception e) {
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;

    }

    public ResultSet searchInfo(int id) {
        query = "SELECT * FROM info WHERE id= " + id + ";";

        try {
            preparedState = connector.prepareStatement(query);
            resultSet = preparedState.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultSet;
    }

}
