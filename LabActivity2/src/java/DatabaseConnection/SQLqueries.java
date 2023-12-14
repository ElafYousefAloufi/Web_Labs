package DatabaseConnection;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SQLqueries {

    String serverURL = "jdbc:mysql://localhost:3306/elafaloufi_1911265?useSSL=false";
    String username = "root";
    String password = "E0509117257e";
    Connection conn = null;
    PreparedStatement preparedST = null;
    ResultSet RS = null;
    String sqlQuery = "";

    public SQLqueries() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(serverURL, username, password);
        } catch (SQLException ex) {
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SQLqueries.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet getMyinfo() {
        sqlQuery = "SELECT * FROM elafaloufi;";
        try {
            preparedST = conn.prepareStatement(sqlQuery);
            RS = preparedST.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(SQLqueries.class.getName()).log(Level.SEVERE, null, ex);
        }
        return RS;
    }
}
