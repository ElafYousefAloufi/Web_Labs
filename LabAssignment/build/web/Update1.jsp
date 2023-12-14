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
            String id = request.getParameter("id");
            DB.SQL connection = new DB.SQL();
            ResultSet resultSet = connection.showUser();
          
            if (resultSet.next()) {
               
        %>

        <form action="Update2.jsp" method="POST">

            <table border="1">
                <tbody>
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="username" /></td>
                <input type="hidden" name="id" value="<%=id%>"/>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="text" name="password" /></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Update" name="Update" /></td>
               
                </tr>
                </tbody>
            </table>

        </form>
        <%}%>
    </body>
</html>

