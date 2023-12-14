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

            DB.SQL connection = new DB.SQL();
            String ID = request.getParameter("id");
            int id = Integer.parseInt(ID);
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            boolean update = connection.update(id, username, password);
            if (update) {


        %>



        <div>
            <br>
            <h1>Your data has been updated</h1>

        </div>

        <%            }


        %>
    </body>
</html>
