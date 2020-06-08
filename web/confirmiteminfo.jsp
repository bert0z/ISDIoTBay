<%-- 
    Document   : confirmiteminfo.jsp
    Created on : 02/06/2020, 3:24:39 PM
    Author     : yujiwon
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Item Info</title>
    </head>
    <body>
        <h1>The details submitted in the database</h1>
        <table>
            <thead><th>ID</th><th>Item name</th><th>Price</th><th>InStock Quantity</th></thead>
        <tr><td>${item.itemid}</td><td>${item.itemname}</td><td>${item.price}</td><td>${item.instockquantity}</td></tr>
        </table>
        <a href="item_update.jsp"> Modify</a>
        <a href="item_list.jsp"> Back to Staff Main page</a>
    </body>
    </body>
</html>
