<%-- 
    Document   : Login
    Created on : Oct 23, 2022, 3:30:59 PM
    Author     : Elaf
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verification Page</title>
    </head>
    <body>

        <%

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if (username != null && username.length() != 0) {

                if (password != null && password.length() > 5) {

                    Database.DatabaseConnection connection = new Database.DatabaseConnection();
                    ResultSet resultSet = connection.getUserInformation(username, password);

                    if (resultSet.next()) {
                        
                        out.print("<p> Correct username and password! </p>");
                        session.setAttribute("username", username);
                        session.setAttribute("password", password);
                        
                        out.print("<a href='ShowInfo.jsp'> Show information </a>");

                    } else {
                        out.print("<p> Username and password does not exist! </p>");
                        out.print("<a href='LoginForm.jsp'> Back to login </a>");
                    }
                } else {
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
