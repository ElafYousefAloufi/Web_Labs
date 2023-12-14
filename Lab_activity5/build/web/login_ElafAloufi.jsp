<%-- 
    Document   : login_ElafAloufi
    Created on : Oct 20, 2022, 3:55:20 PM
    Author     : Elaf
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>

        <%

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if (username != null && username.length() != 0) {

                if (password != null && password.length() > 5) {

                    DatabaseConnection.SQLquery connection = new DatabaseConnection.SQLquery();
                    ResultSet resultSet = connection.getUserInformation(username, password);

        %>

        <% if (resultSet != null && resultSet.next()) {
                out.print("<p> Correct username and password! </p>");%>

        <table border="1">
            <tbody>
                <tr>

                    <td>Username</td>
                    <td>Password</td>
                </tr>
                <tr>

                    <td> <%= resultSet.getString("username")%> </td>
                    <td> <%= resultSet.getString("password")%> </td>
                </tr>

                <%} else {
                        out.print("<p> Username and password does not exist! </p>");
                        out.print("<a href='LoginForm.jsp'> Back to login </a>");
                    }%>


            </tbody>
        </table>


        <%             } else {
                    out.print("<p> Please enter a correct password! </p>");
                    out.print("<a href='LoginForm.jsp'> Back to login </a>");
                }
            } else {

                out.print("<p> Please enter a correct username! </p>");
                out.print("<a href='LoginForm.jsp'> Back to login </a>");
                //response.sendRedirect("LoginForm.jsp");
            }

        %>

    </body>
</html>
