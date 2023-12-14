<%-- 
    Document   : Information
    Created on : Nov 2, 2022, 6:36:32 PM
    Author     : Elaf
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LabActivity7</title>
    </head>
    <body>
        <h1>Database Information!</h1>

        <%
            Database.DatabaseConnection connection = new Database.DatabaseConnection();
            ResultSet resultSet = connection.showInfo();


        %>


        <table border="1">
            <tbody>
                <tr>
                    <td>ID</td>
                    <td>Username</td>
                    <td>Password</td>
                </tr>

                <% while (resultSet.next()) {%>

                <tr>
                    <td> <%= resultSet.getString("id")%> </td>
                    <td> <%= resultSet.getString("username")%> </td>
                    <td> <%= resultSet.getString("password")%> </td>
                    <td> <a href='UpdateForm.jsp?id=<%=resultSet.getString("id")%>'>Update</a> , <a href='Delete.jsp?id=<%=resultSet.getString("id")%>'>Delete</a></td>
                </tr>


                <%}%>
            </tbody>
        </table>
        <br/>

        <button type="button" name="insert" onclick="location.href = 'InsertForm.jsp'">Insert</button>
        <button type="button" name="search" onclick="location.href = 'SearchForm.jsp'">Search</button>
    </body>
</html>
