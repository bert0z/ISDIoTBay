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
    </head>
        <%
            DBManager manager = (DBManager) session.getAttribute("manager");
            ArrayList<Item> items = manager.listAllItems();
            
        %>
        
        
        <%!
   
            
    
        %>
    
    <body>
        
        <form method="post" action="AddToCartServlet">
        <h1>Catalog</h1>
         <table class = "order-table">
               <tr>
                    <th class="order-item-headings">Item ID</th>
                    <th class="order-item-headings">Item Name</th>
                    <th class="order-item-headings">Price</th>
                   <th class="order-item-headings">Add to Cart</th>
                </tr>
                 <% 
                     
                        for (Item i : items) {
                
                 
                 %>
                    <tr>
                        <th><%= i.getItemid()%></th>
                        <th><%= i.getItemname()%></th>
                        <th><%= i.getPrice()%></th>
                        <th><form method ="post" action ="AddToCartServlet">
                                <input type ="hidden" name ="itemid" value="<%= i.getItemid()%>"/>
                                <input type ="hidden" name ="itemname" value="<%= i.getItemname()%>"/>
                                <input type ="hidden" name ="itemprice" value="<%= i.getPrice()%>"/>
                                <input type ="hidden" name ="incart" value="true"/>
                                <input type="submit" name="incart" value="Add to Cart"></form></th>
                 
  
                          
                       
                    </tr>
                    <%  
                    } %>
                    <th><input class="button" type="submit" value="Submit"></th>
                    
            </table>
        
        </form>
    </body>
</html>
