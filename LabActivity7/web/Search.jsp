<%-- 
    Document   : Search
    Created on : Nov 2, 2022, 10:37:28 PM
    Author     : Elaf
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
    <body>
        <%
            String ID = request.getParameter("id");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            int id = Integer.parseInt(ID);

            Database.DatabaseConnection connection = new Database.DatabaseConnection();
            ResultSet resultSet = connection.searchInfo(id);

             if (resultSet.next()) {
               
                
        %>


        <table border="1">
            <tbody>
                <tr>
                    <td>ID</td>
                    <td>Username</td>
                    <td>Password</td>
                </tr>

                <tr>
                    <td> <%= resultSet.getString("id")%> </td>
                    <td> <%= resultSet.getString("username")%> </td>
                    <td> <%= resultSet.getString("password")%> </td>
                </tr>


                <%}%>
            </tbody>
        </table>
            <br/>
        <% out.print("<a href='Information.jsp'> Show Database Information</a>");%>
    </body>
</html>
