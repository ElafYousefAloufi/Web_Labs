<%-- 
    Document   : Search
    Created on : Nov 2, 2022, 10:33:43 PM
    Author     : Elaf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
    <body>
     <form action="Search.jsp" method="post"> 
         <br/>
         <label> Enter the ID to search: </label>
                <input type="text" name="id"/> 
		<input type="submit" value="search"> 
	</form> 
        <br/>
           <% out.print("<a href='Information.jsp'> Back to database information</a>");%>
           
    </body>
</html>
