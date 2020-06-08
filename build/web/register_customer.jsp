<%-- 
    Document   : register_customer
    Created on : 01/06/2020, 6:38:50 AM
    Author     : Hazel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Customer Register</title>
    </head>
    <body>
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="index.jsp">Index</a></li>
                    <li><a href="login_customer.jsp">Login</a></li>
                </ul>
            </div> 
        </div>
        <h1 align="center">Customer Register</h1>
        
        <form method="post" action="RegisterServlet_Customer">
            <table align="center">
                
                <tr><td>Name:</td><td><input type="text" placeholder="name" name="name" required></td></tr>
                <tr><td>Email:</td><td><input type="text" placeholder="email" name="email" required></td></tr>
                <tr><td>Password:</td><td><input type="text" placeholder="password" name="password" required></td></tr>
                <tr><td>Address:</td><td><input type="text" placeholder="address" name="address" required></td></tr>
                <tr><td>Postcode:</td><td><input type="text" placeholder="postcode" name="postcode" required></td><td><i>This field should be numeric</i></td></tr>
                <tr><td>Contact Number:</td><td><input type="text" placeholder="contactnum" name="contactnum" required></td><td><i>This field should be numeric</i></td></tr>
                
                <tr><td><input class="button" type="button" onclick="window.location.href = 'index.jsp';" value="Cancel"/><td><input class="button" type="submit" value="Register"></td></tr>
            </table>
        </form>
    </body>
</html>
