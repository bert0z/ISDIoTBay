<%-- 
    Document   : index
    Created on : 08/04/2020, 4:10:09 PM
    Author     : bert_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body onload="startTime()">
        <h1>Welcome to the Home Page</h1>
        <a href="pastOrderSearch.jsp">Past Orders</a>
        <a href="productsList.jsp">Catalog</a>
         <a href="cart2.jsp">Cart2</a>
        <jsp:include page="/ConnServlet" flush="true"/>
    </body>
</html>
