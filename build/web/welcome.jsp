<%-- 
    Document   : welcome
    Created on : 08/04/2020, 4:20:45 PM
    Author     : Hazel
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.Customer"%>
<%@page import="model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <title>Welcome Page</title>
    </head>
        <%
            Customer customer = (Customer)session.getAttribute("customer");
            DBManager manager = (DBManager)session.getAttribute("manager"); 
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Date date = new Date();
            SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            
            String timeStamp=formatter.format(date);
            
            if (customer != null) {
                manager.addAccessLog("Login", timeStamp, email,"customer");
            }    
        %>
    <style>
    </style>
    <body>
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="main.jsp">Account</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
        <%if (customer!=null){
        %>
       
        <h1>Welcome, ${customer.name}!</h1>
        <p>Your Email is ${customer.email} </p>
        
       <% }else { %>
       
         <h1>Welcome, Anonymous Customer!</h1>
         <%}%>
        <div>
            <a href ="index.jsp">Cancel</a>
            <a href ="main.jsp">Main</a>
        </div>
        <%
            session.setAttribute("customer", customer);
        %>
    </body>
</html>
    

