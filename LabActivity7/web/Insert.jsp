<%-- 
    Document   : Insert
    Created on : Nov 2, 2022, 10:33:26 PM
    Author     : Elaf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert</title>
    </head>
    <body>
        <%
            String ID = request.getParameter("id");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            int id = Integer.parseInt(ID);

            Database.DatabaseConnection connection = new Database.DatabaseConnection();

            int isInserted = connection.insertInfo(id,username, password);

            if (isInserted > 0) {
        %>

        <h2> Username: <%=username%> </h2> 
        <p> have been inserted successfully! </p> 

        <% } out.print("<a href='Information.jsp'> Show Database Information</a>");

        %> 
    </body>
</html>
