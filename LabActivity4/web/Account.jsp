<%-- 
    Document   : CreateAccount
    Created on : Oct 2, 2022, 3:26:26 PM
    Author     : Elaf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            String FirstName = request.getParameter("firstName");
            String LastName = request.getParameter("lastName");
            String Username = request.getParameter("username");
            String id = request.getParameter("id");

            int ID = Integer.parseInt(id);
            Database.DatabaseConnection connection = new Database.DatabaseConnection();
            boolean isInserted = connection.addInfo(FirstName, LastName, Username, ID);
            if(isInserted){
                out.print("Data is successfully inserted!");               
            }
            else {
                 out.print("Error!");  
            }
        %>
    </body>
</html>
