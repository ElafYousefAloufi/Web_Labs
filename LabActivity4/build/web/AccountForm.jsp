<%-- 
    Document   : AccountForm
    Created on : Oct 2, 2022, 3:06:27 PM
    Author     : Elaf 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab Activity4</title>
    </head>
    <body>
        <h1>Account Form</h1>

        <form name="AccountForm" action="Account.jsp" mathod="POST"> 
            <table border="1"> 

                <tbody> 
                    <tr> 
                        <td>First name: </td> 
                        <td> <input type="text" name="firstName" value="" size="20"/></td> 
                    </tr> 

                    <tr> 
                        <td>Last name: </td> 
                        <td> <input type="text" name="lastName" value="" size="8"/></td> 
                    </tr> 

                    <tr> 
                        <td>Username: </td> 
                        <td> <input type="text" name="username" value="" size="8"/></td> 
                    </tr> 

                    <tr> 
                        <td>ID: </td> 
                        <td> <input type="text" name="id" value="" size="8"/></td> 
                    </tr> 


                    <tr> 
                        <td> <input type="submit" name="sign up" value="login"/></td> 
                        <td> <input type="reset" name="reset" value="reset"/></td> 
                    </tr> 


                </tbody> 
            </table> 
        </form> 
    </body>
</html>
