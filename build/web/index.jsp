<%-- 
    Document   : index
    Created on : 08/04/2020, 4:10:09 PM
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
        <title>Home Page</title>
    </head>
    <body onload="startTime()">
    <center>
        <h1>Welcome to the Home Page</h1>

        <div class="nav-wrapper">
                <ul>
                    <li><a href="register_customer.jsp">Customer Register</a></li><br>
                    <li><a href="register_staff.jsp">Staff Register</a></li><br>
                    <li><a href="login_customer.jsp">Customer Login</a></li><br>
                    <li><a href="login_staff.jsp">Staff Login</a></li><br>
                    <li><a href="welcome.jsp">Anonymous Customer</a></li> 
                    <li><a href="item_list.jsp">Staff Catalogue</a></li>
                    <li><a href="product_list.jsp">Customer Catalogue</li>
                </ul>    
        </div>


        <jsp:include page="/ConnServlet" flush="true"/></center>
    </body>
</html>
