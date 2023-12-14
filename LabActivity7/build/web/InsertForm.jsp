<%-- 
    Document   : InsertForm
    Created on : Nov 2, 2022, 10:52:59 PM
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
        <form name="Insert" action="Insert.jsp" mathod="POST"> 
            <table border="1"> 

                <tbody> 

                    <tr> 
                        <td>Enter an id: </td> 
                        <td> <input type="text" name="id"/></td> 
                    </tr> 

                    <tr> 
                        <td>Enter a username: </td> 
                        <td> <input type="text" name="username"/></td> 
                    </tr> 

                    <tr> 
                        <td>Enter a password: </td> 
                        <td> <input type="text" name="password"/></td> 
                    </tr> 


                </tbody> 
            </table> 
            <br/>
            <input type="submit" name="Insert" value="Insert"/>
            <input type="reset" name="reset" value="reset"/>
        </form> 
        <br/>
        <% out.print("<a href='Information.jsp'> Back to database information</a>");%>
    </body>
</html>
