<%-- 
    Document   : InformationWithoutJavaClass
    Created on : Sep 25, 2022, 4:03:00 PM
    Author     : Elaf
--%>

<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LabActivity3</title>
    </head>
    <body>
        <h1>Information record without java class!</h1>
        <%Class.forName("com.mysql.jdbc.Driver");%>

        <%!
            public class SQLquery {

                String url = "jdbc:mysql://localhost:3306/elafaloufi_1911265?useSSL=false";
                String username = "root";
                String password = "E0509117257e";
                Connection connector = null;
                PreparedStatement preparedState = null;
                ResultSet resultSet = null;
                String query = "";

                public SQLquery() {
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        connector = DriverManager.getConnection(url, username, password);
                    } catch (ClassNotFoundException ex) {
                        System.out.println("ClassNotFoundException");
                    } catch (SQLException ex) {
                        System.out.println("SQLException");
                    }
                }

                public ResultSet information() {
                    query = "SELECT * FROM elafaloufi;";

                    try {
                        preparedState = connector.prepareStatement(query);
                        resultSet = preparedState.executeQuery();
                    } catch (SQLException ex) {
                        System.out.println("SQLException");
                    }
                    return resultSet;

                }
            }

        %>         

        <%
            SQLquery sqlQuery = new SQLquery();
            ResultSet result = sqlQuery.information();
        %>


        <table border="1">
            <tbody>
                <tr>
                    <td>ID</td>
                    <td>Username</td>
                </tr>

                <% while (result.next()) {%>

                <tr>
                    <td> <%= result.getString("ID")%> </td>
                    <td> <%= result.getString("Username")%> </td>
                </tr>

                <%}%>
            </tbody>
        </table>

    </body>
</html>
