<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%DatabaseConnection.SQLqueries myInfo = new DatabaseConnection.SQLqueries();
            ResultSet r = myInfo.getMyinfo();
        %>
        <table border="1">
            <tbody>
                <tr>
                    <td>name</td>

                </tr>
                <% while (r.next()) {%>
                <tr>
                    <td> <%= r.getString("Username")%> </td>

                </tr>
                <%}%>
            </tbody>
        </table>


    </body>
</html>