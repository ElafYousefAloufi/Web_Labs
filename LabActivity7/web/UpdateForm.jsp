<%-- 
    Document   : UpdateForm
    Created on : Nov 2, 2022, 9:39:31 PM
    Author     : Elaf
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            Database.DatabaseConnection connection = new Database.DatabaseConnection();
            ResultSet resultSet = connection.showInfo();
          
            if (resultSet.next()) {
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");


        %>

        <form action="Update.jsp" method="POST">

            <table border="0">
                <tbody>
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="username" size="30" /></td>
                <input type="hidden" name="id" value="<%=id%>"/>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="text" name="password" size="30" /></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Update" name="Update" /></td>
                    <td><input type="reset" value="Clear" name="Clear" /></td>
                </tr>
                </tbody>
            </table>

        </form>
        <%}%>
    </body>
</html>
