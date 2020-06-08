 <%-- 
    Document   : login_customer
    Created on : 27/05/2020, 4:50:36 PM
    Author     : Hazel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>Login</title>
    </head>
    <body onload="startTime()">
        <%
            String existErr = (String) session.getAttribute("existErr");
            String emailErr = (String) session.getAttribute("emailErr");
            String passErr = (String) session.getAttribute("passErr");
        %>
        <jsp:useBean id="current" class="java.util.Date" />
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="index.jsp">Index</a></li>
                    <li><a href="register_customer.jsp">Register</a></li>
                </ul>
            </div> 
        </div>
        <h1>Login<span class="message"><%=(existErr != null? existErr : "")%></h1>
        <hr>  
        <form method="post" action="LoginServlet_Customer">
            <table align="center">
                <tr><td>Email:</td><td><input type="text" placeholder="<%=(emailErr != null ? emailErr : "Enter email")%>" name="email" required="true"></td></tr>
                <tr><td>Password:</td><td><input type="password" placeholder="<%=(passErr != null ? passErr : "Enter password")%>" name="password" required></td></tr>
                <tr><td><input class="button" type="button" onclick="window.location.href = 'index.jsp';" value="Cancel"/><td><input class="button" type="submit" value="Sign In"></td></tr>
            </table>
        
        <%
            Date date = new Date();
            
        %>
        
        
        </form>
    </body>
</html>
