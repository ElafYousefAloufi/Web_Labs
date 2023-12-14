<%-- 
    Document   : Update
    Created on : Nov 2, 2022, 7:02:38 PM
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

            String ID = request.getParameter("id");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            int id = Integer.parseInt(ID);

            Database.DatabaseConnection connection = new Database.DatabaseConnection();
            int isUpdated = connection.updateInfo(id, username, password);
            if (isUpdated > 0) {


        %>



        <div>
            <br>
            <h1>Thank you. <%=username%> </h1>
            <p> Your information has been updated successfully! </p>
        
        </div>

        <%              session.invalidate();
            }
        %>
    </body>
</html>
