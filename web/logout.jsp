<%-- 
    Document   : logout
    Created on : 29/04/2020, 5:27:03 PM
    Author     : bert_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <h1>Logged Out!</h1>
        <p>you have logged out click <a href="index.jsp">here</a> to go to the home page.</p>
        <% session.invalidate(); %>
    </body>
</html>
