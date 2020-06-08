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
        <title>Cart</title>
         <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
    </head>
    <body onload="startTime()">
        <h1 class="order-heading"> Create the new Item </h1>
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="main_1.jsp">Main</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
        <form action="AddItemServlet" method="post">
        <div class="order-wrapper">
        <table class = "order-table">
            <tr>
                <td class="order-item-headings">ItemID</td>
                <td class="order-list" ><input type="text" placeholder ="Enter Item ID" name="itemid" required></td>
            </tr>
            <tr>
                <td class="order-item-headings">Item Name</td>
                <td class="order-list"><input type="text" placeholder ="Enter Name" name="itemname" required></td>
            </tr>
            <tr>
                <td class="order-item-headings">Category</td>
                <td class="order-list"><input type="text" placeholder ="Enter the type of item" name="category" required ></td>
            </tr>
            <tr>
                <td class="order-item-headings">InStock</td>
                <td class="order-list"><input type="text" placeholder ="Enter the status of instock" name="instock" required></td>
            </tr>
            
            <tr>
                <td class="order-item-headings">Price</td>
                <td class="order-list"><input type="text" placeholder ="Enter Price" name="price" required></td>
            </tr>
            <tr>
                <td class="order-item-headings">InStockQuantity</td>
                <td class="order-list"><input type="text" placeholder ="Enter the quantity of the item instock" name="instockquantity" required ></td>
            </tr>
             <tr>
                <td class="order-item-headings">ManufactureID</td>
                <td class="order-list"><input type="text" placeholder ="Enter the manufactureid" name="manufactureid" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <p class="order-buttons"><input class="order-submit" type="submit" value="submit"></p>
                    <p class="order-buttons"><a href="item_list.jsp"> Cancel</a></p>
                </td>
            </tr>
        </table>
        </form>
        </div>
         
    </body>

</html>
