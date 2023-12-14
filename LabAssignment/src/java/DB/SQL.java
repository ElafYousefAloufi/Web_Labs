package DB;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SQL {

    String url = "jdbc:mysql://localhost:3306/lab?useSSL=false";
    String username = "root";
    String password = "E0509117257e";
    Connection connector = null;
    PreparedStatement preparedState = null;
    ResultSet resultSet = null;
    String query = "";

    public SQL() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connector = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SQL.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SQL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean update(int id, String username, String password) {
        query = "update lab7 set username= '" + username + "' , password= '" + password + "' where id= " + id + ";";
        boolean i = false;
        try {
            Statement stmt = connector.createStatement();
            stmt.executeUpdate(query);
            i = true;

        } catch (Exception e) {
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;

    }

    public ResultSet showUser() {
        query = "SELECT * FROM lab7;";

        try {
            preparedState = connector.prepareStatement(query);
            resultSet = preparedState.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(SQL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultSet;

    }

    public boolean delete(int id) {
        query = "delete from lab7 where id=" + id + ";";
        boolean i = false;
        try {
            Statement stmt = connector.createStatement();
            stmt.executeUpdate(query);
            i = true;

        } catch (Exception e) {
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;

    }

}
