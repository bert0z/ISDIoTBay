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
    </head>
    <body onload="startTime()">
        <form method="post" action="UpdateItemServlet">
        <%
            int itemid = Integer.parseInt(request.getParameter("itemid"));
            DBManager manager =(DBManager) session.getAttribute("manager");
            Item item = manager.findItemid(itemid);
            String updated = (String) session.getAttribute("updated");
        %>
        <h1>Modify Item Information:<%=(updated != null ? updated: "")%></h1>
        
            <table>
            <tr><td>ItemID</td><td><input type="text" name="itemid" value="<%=item.getItemid()%>"></tr></tr>
            <tr><td>Item Name</td><td><input type="text"  name="itemname" value="<%=item.getItemname()%>"></td></tr>
            <tr><td>Category</td><td><input type="text" name="category" value="<%=item.getCategory()%>" ></td></tr>
            <tr><td>InStock</td><td><input type="text"  name="instock" value="<%=item.isInstock()%>"></td></tr>
            <tr><td>Price</td><td><input type="text" name="price" value="<%=item.getPrice()%>"></td></tr>
            <tr><td>InStockQuantity</td><td><input type="text" name="instockquantity" value="<%=item.getInstockquantity()%>"></td></tr>
            <tr><td>ManufactureID</td><td><input type="text" name="manufactureid" value="<%=item.getManufactureid()%>"></td></tr>
            <tr><td></td>
                <td>
                    <input class="button" type="submit" value="Update">
                </td>
            </table>
        </form>
            <a href="item_list.jsp">Cancel</a>
    </body>
</html>
