<%-- 
    Document   : cart
    Created on : Jun 2, 2020, 1:35:40 PM
    Author     : danie
--%>

<%@page import="model.dao.DBManager"%>
<%@page import="model.Item"%>
<%@page import="model.Order"%>
<%@page import="model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
    </head>
    
 
        <%
            DBManager manager = (DBManager) session.getAttribute("manager");
            ArrayList<Item> items = manager.listAllItems();
            int itemQty = 1;
            String added = request.getParameter("Add");
            
        %>
        
        
        <%!
   
    
        %>
    
    <body>
        <h1>Your Cart</h1>
         <table class = "order-table">
               <tr>
                    <th class="order-item-headings">Item ID</th>
                    <th class="order-item-headings">Item Name</th>
                    <th class="order-item-headings">Quantity</th>
                    <th class="order-item-headings">Price</th>
                </tr>
                 <% 
                     
                        for (Item i : items) {
                 if (i.isIncart() == true) {
                 
                 %>
                    <tr>
                        <th><%= i.getItemid()%></th>
                        <th><%= i.getItemname()%></th>
                        <th><%= i.getPrice()%></th>
                        <th><%=  i.isIncart()%></th>
                        <th><button type="button">Remove</button>${Item.removeFromCart()}</th>
                          
                       
                    </tr>
                    <%  
                   } } %>
                    
            </table>
        <p><a href="editCart.jsp">Edit Order</a></p>
        <p><a href="confirmOrder.jsp">Confirm Order</a></p>
        <p><a href="cancelOrder.jsp">Cancel Order</a></p>
    </body>
</html>
