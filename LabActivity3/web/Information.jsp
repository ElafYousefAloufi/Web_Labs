<%-- 
    Document   : Information
    Created on : Sep 25, 2022, 3:28:15 PM
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
        <h1>Hello Elaf Aloufi!</h1>
        <%
            DatabaseConnection.SQL connection = new DatabaseConnection.SQL();
            ResultSet resultSet = connection.information();


        %>

        <table border="1">
            <tbody>
                <tr>
                    <td>ID</td>
                    <td>Username</td>
                </tr>
                
                <% while (resultSet.next()) {%>
                
                <tr>
                    <td> <%= resultSet.getString("ID")%> </td>
                    <td> <%= resultSet.getString("Username")%> </td>
                </tr>
                
                <%}%>
            </tbody>
        </table>

    </body>
</html>
