<%-- 
    Document   : welcome
    Created on : 08/04/2020, 4:20:45 PM
    Author     : bert_
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
        <%
            User user = (User)session.getAttribute("user");
            String tos = request.getParameter("tos");
        %>
    <style>
    </style>
    <body>
        
        <% if(tos!=null){ %>
        <h1>Welcome, ${user.name}!</h1>
        <p>Your Email is ${user.email} </p>
        <p>Your Password is ${user.password} </p>
        <p>Your gender is ${user.gender} </p>
        <p>Your favourite colour is ${user.favcol} </p>
        <p>Click <a href ="pastshipments.jsp">Here</a> for past shipments
        <% }else{ %>
        <p>Sorry, you must agree to the Terms of Service.</p>
        <p>Click <a href="register.jsp"> here</a> to go back.</p>
        <% } %>
        <div>
            <a href ="index.jsp">Cancel</a>
            <a href ="main.jsp">Main</a>
        </div>
        <%
            session.setAttribute("user", user);
        %>
    </body>
</html>
    

