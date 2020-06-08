<%-- 
    Document   : main
    Created on : 29/04/2020, 4:18:28 PM
    Author     : Hazel
--%>
<%@page import="java.util.Date"%>
<%@page import="model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Dashboard</title>
    </head>
    <body>
        <%
           Customer customer = (Customer)session.getAttribute("customer");
           if (customer!=null){
        %>
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="index.jsp">Index</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
        <h1>Customer Dashboard</h1>
        <hr>
        <%
                Date date = new Date();
        %>
        
        
        <table>
            <thead><th>Name</th><th>Email</th><th>Address</th><th>Postcode</th><th>Contact Number</th>
        <tr><td>${customer.name}</td><td>${customer.email}</td><td>${customer.address}</td><td>${customer.postcode}</td><td>${customer.contactnum}</td></tr>
        </table>
        <div>
            <a href="edit.jsp">Edit Customer Account</a>
            <a href="delete_customer.jsp">Delete Customer Account</a>
            <a href="accessLogs_customer.jsp">View Access Logs List</a>
            <a href="find_accessLogs_customer.jsp">Find Access Logs</a>
            <a href="logout.jsp">Logout </a>
        </div>
        <%    } else { %>
        <h1>Anonymous User Main Page</h1>
        <p>You are currently not logged in</p>
        <p><a href="register_customer.jsp">Register</a></p>
        <p><a href="login_customer.jsp">Login</a></p>
        <p><a href="index.jsp">Index</a></p>
        <%   } %>
        
         
    </body>
</html>
