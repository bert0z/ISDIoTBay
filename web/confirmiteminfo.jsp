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
        <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="main_1.jsp">Main</a><li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
        <div class="order-wrapper">
        <h1 class="order-heading">The details submitted in the database</h1>
        <table class = "order-table" border="1" cellpadding="5" cellspacing="1">
        <thead><th class="order-item-headings">ID</th><th class="order-item-headings" >Item name</th><th class="order-item-headings">Price</th><th class="order-item-headings">In Stock Quantity</th></thead>
        <tr><td class="order-list">${item.itemid}</td><td class="order-list">${item.itemname}</td><td class="order-list">${item.price}</td><td class="order-list">${item.instockquantity}</td></tr>
        </table>
        <p class="order-buttons"><a href="item_list.jsp"> Back </a></p>
        </div>
    </body>
</html>
