<%-- 
    Document   : cart
    Created on : Jun 2, 2020, 1:35:40 PM
    Author     : danie
--%>

<%@page import="model.dao.DBManager"%>
<%@page import="model.Item"%>
<%@page import="model.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
         <link rel="stylesheet" href="css/style.css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
    </head>
        <%
            DBManager manager = (DBManager) session.getAttribute("manager");
            ArrayList<Item> items = manager.listAllItems();
            
        %> 
    <body>
           <div class="nav-wrapper">
            <p class="logo"><a href="index.jsp"><img border="0" alt="Logo" src="images/logo-3.png" width="40"></a></p>

            <div class="nav"> 

                <ul>
                    <li><a href="main.jsp">Account</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div> 
        </div>
        
        <div class="order-wrapper">
        <h1 class="order-heading">Catalog</h1>
        <form method="post" action="SearchItemServlet">
            <table align="center">
                <p>Search the product you want:</p>
                <br>
                <p>Search:<input type="text" placeholder="" name="search" size="24"></p>
                <input type="submit" value="submit">
        </form>
         <table class = "order-table">
               <tr>
                    <td class="order-item-headings">Item ID</td>
                    <td class="order-item-headings">Item Name</td>
                    <td class="order-item-headings">Category</td>
                    <td class="order-item-headings">InStock</td>
                    <td class="order-item-headings">Price</td>
                    <td class="order-item-headings">InstockQuantity</td>
                    <td class="order-item-headings">Manufacture ID</td>
                    <td class="order-item-headings">Add to Cart</td>
                </tr>
                 <% 
                        for (Item i : items) 
                        {
                 %>
                    <tr>
                        <td class="order-list"><%= i.getItemid()%></td>
                        <td class="order-list"><%= i.getItemname()%></td>
                        <td class="order-list"><%= i.getCategory()%></td>
                        <td class="order-list"><%= i.isInstock()%></td>
                        <td class="order-list"><%= i.getPrice()%></td>
                        <td class="order-list"><%= i.getInstockquantity()%></td>
                        <td class="order-list"><%= i.getManufactureid()%></td>
                     
                        
                        <td class="order-list"><form method ="post" action ="AddToCartServlet">
                        <input type ="hidden" name ="itemid" value="<%= i.getItemid()%>"/>
                        <input type ="hidden" name ="itemname" value="<%= i.getItemname()%>"/>
                        <input type ="hidden" name ="itemprice" value="<%= i.getPrice()%>"/>
                        <input type ="hidden" name ="incart" value="true"/>
                        <input type="submit" name="incart" value="Add to Cart"></form></td>
                    </tr>
                    <%  
                    } 
                    %>            
            </table>
        </div>
        
        </form>
    </body>
</html>
