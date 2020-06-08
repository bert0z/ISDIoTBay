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
        <p><a href="register_customer.jsp">Customer Register</a></p>
        <p><a href="register_staff.jsp">Staff Register</a></p>
        <p><a href="login_customer.jsp">Customer Login</a></p>
        <p><a href="login_staff.jsp">Staff Login</a></p>
        <p><a href="welcome.jsp">Anonymous Customer</a></p>
        <p><a href="item_list.jsp">Staff_Catalogue</a></p>
        <p><a href="product_list.jsp">Customer_Catalogue</a></p>
        <jsp:include page="/ConnServlet" flush="true"/></center>
    </body>
</html>
