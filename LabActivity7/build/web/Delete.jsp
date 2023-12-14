<%-- 
    Document   : Delete
    Created on : Nov 2, 2022, 7:02:51 PM
    Author     : Elaf
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
    <body>

              <%
                                 
            String ID = request.getParameter("id");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            int id = Integer.parseInt(ID);
            
            Database.DatabaseConnection connection = new Database.DatabaseConnection();
            int isDeleted = connection.deleteInfo(id);
            if(isDeleted > 0){
                out.print("<h2>Your information is deleted successfully!</h2>"); 
                out.print("<a href='Information.jsp'> Show Database Information</a>");
                //response.sendRedirect("Information.jsp");
            }
            else {
                 out.print("Error!");  
            }


        %>

    </body>
</html>
