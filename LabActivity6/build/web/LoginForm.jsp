<%-- 
    Document   : LoginForm
    Created on : Oct 23, 2022, 3:17:39 PM
    Author     : Elaf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form</title>
    </head>
    <body>
        <h1>Login Form!</h1>

        <form name="loginForm" action="Login.jsp" mathod="POST"> 
            <table border="1"> 

                <tbody> 

                    <tr> 
                        <td>Enter your username: </td> 
                        <td> <input type="text" name="username" value="" size="20"/></td> 
                    </tr> 

                    <tr> 
                        <td>Enter your password: </td> 
                        <td> <input type="text" name="password" value="" size="20"/></td> 
                    </tr> 


                    <tr> 
                        <td align="center"> <input type="submit" name="sign up" value="login"/></td> 
                        <td align="center"> <input type="reset" name="reset" value="reset"/></td> 
                    </tr> 


                </tbody> 
            </table> 
        </form> 
    </body>
</html>
