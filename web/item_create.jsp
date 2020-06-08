<%-- 
    Document   : item_create
    Created on : 18/05/2020, 4:06:06 PM
    Author     : yujiwon
--%>

<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Item</title>
    </head>
    <body onload="startTime()">
        <h1> Create the new Item </h1>
        <form action="AddItemServlet" method="post">
        <table>
            <tr>
                <td>ItemID</td>
                <td><input type="text" placeholder ="Enter Item ID" name="itemid"></td>
            </tr>
            <tr>
                <td>Item Name</td>
                <td><input type="text" placeholder ="Enter Name" name="itemname"></td>
            </tr>
            <tr>
                <td>Category</td>
                <td><input type="text" placeholder ="Enter the type of item" name="category" ></td>
            </tr>
            <tr>
                <td>InStock</td>
                <td><input type="text" placeholder ="Enter the status of instock" name="instock"></td>
            </tr>
            
            <tr>
                <td>Price</td>
                <td><input type="text" placeholder ="Enter Price" name="price"></td>
            </tr>
            <tr>
                <td>InStockQuantity</td>
                <td><input type="text" placeholder ="Enter the quantity of the item instock" name="instockquantity" ></td>
            </tr>
             <tr>
                <td>ManufactureID</td>
                <td><input type="text" placeholder ="Enter the manufactureid" name="manufactureid"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="submit">
                    <a class="button" href="item_list.jsp"> Cancel </a>
                </td>
            </tr>
        </table>
    </body>
</html>
