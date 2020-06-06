<%-- 
    Document   : editCart
    Created on : Jun 3, 2020, 5:56:08 PM
    Author     : danie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Cart</title>
    </head>
    <body>
        <h1>Edit Cart Details</h1>
        
        <form method="post" action="AddToCartServlet">
            <table align="center">
                <tr><td>Order ID:</td><td><input type="text" placeholder="${orderline.itemid}" name="itemid"  ></td></tr>
                <tr><td>Item Name:</td><td><input  type="text" placeholder="${orderline.itemname}" name="itemname"  ></td></tr>
                <tr><td>Item Price:</td><td><input type="text" placeholder="${orderline.itemprice}" name="itemprice"></td></tr>
                <tr><td>In Cart:</td><td><input type="text" placeholder="${orderline.incart}" name="incart" ></td></tr>
            <td><input class="button" type="submit" value="Modify"></td></tr>
            </table>
        </form>
    </body>
</html>
