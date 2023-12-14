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
            int id = Integer.parseInt(ID);
            
            DB.SQL connection = new DB.SQL();
            boolean delete = connection.delete(id);
            if(delete){
                out.print("<h1>Your data is deleted</h1>"); 
            }
          


        %>

    </body>
</html>
