<%-- 
    Document   : ShowInfo
    Created on : Oct 23, 2022, 3:18:16 PM
    Author     : ASUS
--%>

<%@ page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Information</title>
    </head>
    <body>
        <%
            if (session.getAttribute("username") != null) {
                if (session.getAttribute("password") != null) {
                    Database.DatabaseConnection user = new Database.DatabaseConnection();
                    ResultSet result = user.information();
        %>
        <h2>Database Information</h2>
        <table border="1">
            <tbody>
                <tr>
                    <td>Username</td>
                    <td>Password</td>
                </tr>
                <% while (result.next()) {%>
                <tr>
                    <td><%= result.getString("username")%></td>
                    <td><%= result.getString("password")%></td>

                    </td>
                </tr>
                <%
                    } %> 

            <br/> <a href="Logout.jsp"> log out </a>

            <%
                        user.close();

                    } else {
                        out.print("You are not authorized to see info");
                        //response.sendRedirect("LoginForm.jsp");
                    }
                } else
                    out.print("You are not authorized to see info");
                //response.sendRedirect("LoginForm.jsp");
            %>

        </tbody>

    </table>
</body>
</html>
