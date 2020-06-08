<%-- 
    Document   : item_delete
    Created on : 08/06/2020, 12:09:57 PM
    Author     : yujiwon
--%>

<%@page import="model.dao.DBManager"%>
<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>item delete confirmation</title>
    </head>
    <body>
        <%
            int itemid = Integer.parseInt(request.getParameter("itemid"));
            DBManager manager =(DBManager) session.getAttribute("manager");
            Item item = manager.findItemid(itemid);
            String updated = (String) session.getAttribute("updated");
        %>
        <h1>Delete the Item:<%=(updated != null ? updated: "")%><h1>
        <form method="post" action="DeleteItemServlet">
            <table>
     
                <tr><td>Item ID:</td><td><input name="itemid" required="true" value="<%=item.getItemid()%>"></td></tr>
                <tr><td>Item Name:</td><td><input name="itemname" required="true" value="<%=item.getItemid()%>"></td><tr>
            </table>
            <p> Are you sure you want to delete this item from the catalogue? </p>
            <input type="submit" value="Delete"></td></tr>
        </form>
            <a href="item_list.jsp" >Cancel<a> 
    </body>
</html>
