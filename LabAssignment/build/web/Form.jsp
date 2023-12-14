<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form</title>
    </head>
    <body>
   

        <%
            DB.SQL connection = new DB.SQL();
            ResultSet resultSet = connection.showUser();


        %>


        <table border="1">
            <tbody>
                <tr>
                    <td>ID</td>
                    <td>Username</td>
                    <td>Password</td>
                </tr>

                <% while (resultSet.next()) {%>

                <tr>
                    <td> <%= resultSet.getString("id")%> </td>
                    <td> <%= resultSet.getString("username")%> </td>
                    <td> <%= resultSet.getString("password")%> </td>
                    <td> <a href='Update1.jsp?id=<%=resultSet.getString("id")%>'>Update</a> <a href='Delete.jsp?id=<%=resultSet.getString("id")%>'>Delete</a></td>
                </tr>


                <%}%>
            </tbody>
        </table>
    
    </body>
</html>
