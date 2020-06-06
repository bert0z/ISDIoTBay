<%-- 
    Document   : cart
    Created on : Jun 2, 2020, 1:35:40 PM
    Author     : danie
--%>

<%@page import="model.dao.DBManager"%>
<%@page import="model.OrderLine"%>
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
            ArrayList<OrderLine> items = manager.listOrderLineItems();
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
                     
                        for (OrderLine o : items) {
                 if (o.isIncart() == true) {
                 
                 %>
                    <tr>
                        <th><%= o.getItemid()%></th>
                        <th><%= o.getItemname()%></th>
                        <th><%= itemQty %></th>
                        <th><%= o.getItemprice()%></th>
                        <th><%=  o.isIncart()%></th>
                          
                       
                    </tr>
                    <%  
                   } } %>
                    
            </table>
        <p><a href="editCart.jsp">Edit Order</a></p>
        <p><a href="confirmOrder.jsp">Confirm Order</a></p>
        <p><a href="cancelOrder.jsp">Cancel Order</a></p>
    </body>
</html>
