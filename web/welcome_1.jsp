<%-- 
    Document   : welcome_1
    Created on : 08/04/2020, 4:20:45 PM
    Author     : Hazel
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="model.dao.DBManager"%>
<%@page import="model.Staff"%>
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
            Staff staff = (Staff)session.getAttribute("staff");
            //String tos = request.getParameter("tos");
            
            DBManager manager = (DBManager)session.getAttribute("manager"); 
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Date date = new Date();
            SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            
           // String time = request.getParameter("time");
            String timeStamp=formatter.format(date);

            
            if (staff != null) {
                manager.addAccessLog("Login", timeStamp, email,"staff");
            }    
        %>
    <style>
    </style>
    <body>
        
        
        <h1>Welcome, ${staff.name}!</h1>
        <p>Your Email is ${staff.email} </p>
        <p>Your Password is ${staff.password} </p>
        
        
        
        <div>
            <a href ="index.jsp">Cancel</a>
            <a href ="main_1.jsp">Main</a>
        </div>
        <%
            session.setAttribute("staff", staff);
        %>
    </body>
</html>
    

