<%-- 
    Document   : item_update
    Created on : 02/06/2020, 2:55:01 PM
    Author     : yujiwon
--%>

<%@page import="model.dao.DBManager"%>
<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Item_update</title>
        <title>Cart</title>
         <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
    </head>
    <body onload="startTime()">
        <form method="post" action="UpdateItemServlet">
        <%
            int itemid = Integer.parseInt(request.getParameter("itemid"));
            DBManager manager =(DBManager) session.getAttribute("manager");
            Item item = manager.findItemid(itemid);
            String updated = (String) session.getAttribute("updated");
        %>
        <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="main_1.jsp">Main</a><li>
                    <li><a href="logout_1.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
        <div class="order-wrapper">
        <h1 class="order-heading">Modify Item Information:<%=(updated != null ? updated: "")%></h1>
            
            <table class = "order-table">
            <tr><td class="order-item-headings">ItemID</td><td class="order-list"><input name="itemid" value="<%=item.getItemid()%>" required></tr></tr>
            <tr><td class="order-item-headings">Item Name</td><td class="order-list"><input type="text"  name="itemname" value="<%=item.getItemname()%>" required></td></tr>
            <tr><td class="order-item-headings" >Category</td><td class="order-list"><input type="text" name="category" value="<%=item.getCategory()%>" required></td></tr>
            <tr><td class="order-item-headings">InStock</td><td class="order-list"><input type="text"  name="instock" value="<%=item.isInstock()%>" required></td></tr>
            <tr><td class="order-item-headings">Price</td><td class="order-list"><input type="text" name="price" value="<%=item.getPrice()%>" required></td></tr>
            <tr><td class="order-item-headings">InStockQuantity</td><td class="order-list"><input type="text" name="instockquantity" value="<%=item.getInstockquantity()%>" required></td></tr>
            <tr><td class="order-item-headings">ManufactureID</td><td class="order-list"><input type="text" name="manufactureid" value="<%=item.getManufactureid()%>" required></td></tr>
  
            <tr><td></td>
                <td>
                    <p class="order-buttons"><input  class="order-submit" type="submit" value="Update"></p>
                    <p class="order-buttons"><a href="item_list.jsp">Back to the catalogue</a></p>
                </td>
            </table>
        </form>
            
        </div>
    </body>
</html>
