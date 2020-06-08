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
        <h1 align="center">Customer Dashboard</h1>
        <hr>
        <%
                Date date = new Date();
        %>
        
        
        <table>

            <tr>
                <td><b>Name:</b></td><td>${customer.name}</td>
            </tr>
            <tr>
                <td><b>Email:</b></td><td>${customer.email}</td>
            </tr>
            <tr>
                <td><b>Address:</b></td><td>${customer.address}</td>
            </tr>
            <tr>
                <td><b>Contact Number:  </b></td><td>${customer.contactnum}</td>
            </tr>
        </table>
        
        
    <br><br>
    <center>
        <div class="nav-wrapper">
                <ul>
                    <li><a href="edit.jsp">Edit Customer Account</a></li>
                    <li><a href="delete_customer.jsp">Delete Customer Account</a></li><br>
                    <li><a href="accessLogs_customer.jsp">View Access Logs List</a></li>
                    <li><a href="find_accessLogs_customer.jsp">Find Access Logs</a></li>
                    <li><a href="PaymentListServlet">My Payment</a></li>
                    <li><a href="product_list.jsp">Customer Catalogue</a></li>
                    <li><a href="pastshipments.jsp">My Shipments</a></li>
                    <li> <a href="logout.jsp">Logout </a></li>
                </ul>    

        </div>
        
    </center>
        <%    } else { %>
        <center>
            <h1>Anonymous User Main Page</h1>
        <p>You are currently not logged in!</p>
        <div class="nav-wrapper">
                <ul>
                    <li><a href="register_customer.jsp">Register</a></li>
                    <li><a href="login_customer.jsp">Login</a></li><br>
                    <li><a href="index.jsp">Index</a></li>
                </ul>    
        </div>
        </center>
        
        <%   } %>
        
    </center>
    </body>
</html>
