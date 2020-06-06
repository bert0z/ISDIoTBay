 <%-- 
    Document   : login
    Created on : 27/05/2020, 4:50:36 PM
    Author     : bert_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>Login</title>
    </head>
    <body onload="startTime()">
        <%
            String existErr = (String) session.getAttribute("existErr");
            String emailErr = (String) session.getAttribute("emailErr");
            String passErr = (String) session.getAttribute("passErr");
        %>
        <h1>Login<span class="message"><%=(existErr != null? existErr : "")%></h1>
        <hr>  
        <form method="post" action="LoginServlet">
            <table align="center">
                <tr><td>Email:</td><td><input type="text" placeholder="<%=(emailErr != null ? emailErr : "Enter email")%>" name="email" required="true"></td></tr>
                <tr><td>Password:</td><td><input type="password" placeholder="<%=(passErr != null ? passErr : "Enter password")%>" name="password" required></td></tr>
                <tr><td><input class="button" type="button" onclick="window.location.href = 'index.jsp';" value="Cancel"/><td><input class="button" type="submit" value="Sign In"></td></tr>
            </table>
        </form>
    </body>
</html>
