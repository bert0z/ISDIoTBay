/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import model.Customer;
import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import model.AccessLog;
import model.Item;
import model.Staff;

/* 
* DBManager is the primary DAO class to interact with the database. 
* Complete the existing methods of this classes to perform CRUD operations with the db.
*/

public class DBManager {

    private Statement st;
   
    public DBManager(Connection conn) throws SQLException {       
        st = conn.createStatement();   
    }

//Find user by email and password in the database   
    public Customer findCustomer(String email, String password) throws SQLException {       
        //setup the select sql query string  
        //execute this query using the statement field 
        String fetch = "SELECT * FROM IOTUSER.CUSTOMER WHERE EMAIL ='"+ email +"'AND PASSWORD='"+ password +"'";
        //add the results to a ResultSet     
        ResultSet rs = st.executeQuery(fetch);       
        //add the results to a ResultSet       
        //search the ResultSet for a user using the parameters   
        while(rs.next()) {
            String customerEmail = rs.getString(1);
            String customerPass = rs.getString(3);
            if(customerEmail.equals(email) && customerPass.equals(password)){
                String customerName = rs.getString(2);
                String customerAddress = rs.getString(4);
                String customerPostcode = rs.getString(5);
                String customerContactNum = rs.getString(6);
                
                return new Customer(customerEmail,customerName,customerPass,customerAddress,customerPostcode,customerContactNum);
            }
        }            
        return null;   
    }
    
    public Staff findStaff(String email, String password) throws SQLException {       
        //setup the select sql query string  
        //execute this query using the statement field 
        String fetch = "SELECT * FROM IOTUSER.STAFF WHERE EMAIL ='"+ email +"'AND PASSWORD='"+ password +"'";
        //add the results to a ResultSet     
        ResultSet rs = st.executeQuery(fetch);       
        //add the results to a ResultSet       
        //search the ResultSet for a user using the parameters   
        while(rs.next()) {
            String staffEmail = rs.getString(1);
            String staffPass = rs.getString(3);
            if(staffEmail.equals(email) && staffPass.equals(password)){
                String staffName = rs.getString(2);
                String staffContactNum = rs.getString(4);
                String staffPosition = rs.getString(5);
                String staffSalary = rs.getString(6);
                
                return new Staff(staffName,staffEmail,staffPass,staffContactNum,staffPosition,staffSalary);
            }
        }            
        return null;   
    }
    
    public AccessLog findAccessLog(String email) throws SQLException {       
        //setup the select sql query string  
        //execute this query using the statement field 
        String fetch = "SELECT * FROM IOTUSER.ACCESSLOG WHERE EMAIL ='"+ email +"'";
        //add the results to a ResultSet     
        ResultSet rs = st.executeQuery(fetch);       
        //add the results to a ResultSet       
        //search the ResultSet for a user using the parameters   
        while(rs.next()) {
            
            String userEmail = rs.getString(3);
            if(userEmail.equals(email) ){
                String accessType = rs.getString(1);
                String time = rs.getString(2);
                String accountType = rs.getString(4);
                
                return new AccessLog(accessType, time, userEmail, accountType);
            }
        }            
        return null;   
    }
    

//Add a user-data into the database   
    public void addCustomer(String email, String name, String password, String address, String postcode, String contactnum) throws SQLException {                   //code for add-operation       
        st.executeUpdate("INSERT INTO IOTUSER.CUSTOMER " + "VALUES ('"+ email +"','"+ name +"','"+ password +"','"+address+"','"+postcode+"','"+contactnum+"')");   

    }
    
    public void addStaff(String email, String name, String password, String contactnum, String position, String salary) throws SQLException {                   //code for add-operation       
        st.executeUpdate("INSERT INTO IOTUSER.STAFF " + "VALUES ('"+ email +"','"+ name +"','"+ password +"','"+contactnum+"','"+position+"','"+salary+"')");   

    }
    
    public void addAccessLog(String accessType, String time, String email, String accountType) throws SQLException {                   //code for add-operation       
        st.executeUpdate("INSERT INTO IOTUSER.ACCESSLOG " + "VALUES ('"+ accessType +"','"+ time +"','"+ email +"','"+accountType+"')");   

    }

//update a user details in the database   
    public void updateCustomer(String curremail, String email, String name, String password, String address, String postcode, String contactnum) throws SQLException { 
        st.executeUpdate("UPDATE IOTUSER.CUSTOMER SET EMAIL='"+email+"',NAME='"+name+"',PASSWORD='"+password+"',ADDRESS='"+address+"',POSTCODE='"+postcode+"',CONTACTNUM='"+contactnum+"' WHERE EMAIL='"+curremail+"'");
   //code for update-operation   

    }   
    
    public void updateStaff(String curremail, String email, String name, String password, String contactnum, String position, String salary) throws SQLException { 
        st.executeUpdate("UPDATE IOTUSER.STAFF SET EMAIL='"+email+"',NAME='"+name+"',PASSWORD='"+password+"',CONTACTNUM='"+contactnum+"',POSITION='"+position+"',SALARY='"+salary+"' WHERE EMAIL='"+curremail+"'");
   //code for update-operation   

    }       

//delete a user from the database   
    public void deleteCustomer(String email) throws SQLException{ 
        st.executeUpdate("DELETE FROM IOTUSER.CUSTOMER WHERE EMAIL='"+email+"'");
   //code for delete-operation   

    }
    
    public void deleteStaff(String email) throws SQLException{ 
        st.executeUpdate("DELETE FROM IOTUSER.STAFF WHERE EMAIL='"+email+"'");
   //code for delete-operation   

    }
    
    public ArrayList<AccessLog>  listAccessLogs(String email) throws SQLException
    {
        ArrayList<AccessLog> listLogs = new ArrayList<>();
        String sql ="SELECT * FROM IOTUSER.ACCESSLOG WHERE EMAIL ='"+ email +"'";
        ResultSet rs = st.executeQuery(sql);
        
        
        while(rs.next())
        {
            String userEmail = rs.getString(3);
            if(userEmail.equals(email) ){
            
                String accessType = rs.getString(1);
                String time = rs.getString(2);
                String accountType = rs.getString(4);
                AccessLog accessLog = new AccessLog(accessType,time,userEmail,accountType);
                listLogs.add(accessLog);
            }
            
        }
        
        return listLogs;
    }
    
    public ArrayList<AccessLog> findLogsByTime(String email, String timeStamp) throws SQLException
    {
        ArrayList<AccessLog> listLogs = new ArrayList<>();
        String sql ="SELECT * FROM IOTUSER.ACCESSLOG WHERE TIME LIKE '"+ timeStamp +"%'";
        ResultSet rs = st.executeQuery(sql);
        
        
        while(rs.next())
        {
            String userEmail = rs.getString(3);
            if(userEmail.equals(email) ){
            
                String accessType = rs.getString(1);
                String time = rs.getString(2);
                String accountType = rs.getString(4);
                AccessLog accessLog = new AccessLog(accessType,time,userEmail,accountType);
                listLogs.add(accessLog);
            }
            
        }
        
        return listLogs;
    }
    //ITEM
    public Item findItem(String search) throws SQLException
    {
       //search and list the devices based on their name and type
       String fetch = "SELECT * FROM IOTUSER.ITEM WHERE ITEMNAME ='"+search+"'";
        //add the results to a ResultSet     
       ResultSet rs = st.executeQuery(fetch); 
       //when nothing typed in the search 
       while(rs.next()) {
            String itemname = rs.getString(2);
            if(itemname.equals(search))
            {
               int itemID = Integer.parseInt(rs.getString(1));
               String category = rs.getString(3);
               boolean instock = Boolean.parseBoolean(rs.getString(4));
               double price = Double.parseDouble(rs.getString(5));
               int instockquantity=Integer.parseInt(rs.getString(6));
               int manufactureid = Integer.parseInt(rs.getString(7));
               
               return new Item(itemID,itemname,category,instock,price,instockquantity,manufactureid);
            }
        }            
        return null; 
    }
    
    //add a item into the database
    public void addItem(int itemid, String itemname, String category, boolean instock, 
            double price, int instockquantity, int manufactureid) throws SQLException
    {
        st.executeUpdate("INSERT INTO IOTUSER.ITEM VALUES ("+itemid+",'"+itemname+"','"+category+"',"+instock+
                ","+price+","+instockquantity+","+manufactureid+")");
    }
    
    //update a item details in the database
    public void updateItem(int itemid, String itemname, String category, boolean instock, 
            double price, int instockquantity, int manufactureid) throws SQLException
    {
        st.executeUpdate("UPDATE IOTUSER.ITEM SET ITEMID ="+itemid+",ITEMNAME ='"+itemname+"',CATEGORY = '"+category+"',INSTOCK ="+instock+
                ",PRICE="+price+",INSTOCKQUANTITY="+instockquantity+",MANUFACTURERID="+manufactureid+
                "WHERE ITEMID = "+itemid);
    }
    
    //delete a item from the database
    public void deleteItem(int itemid) throws SQLException
    {
        st.executeUpdate("DELETE FROM IOTUSER.ITEM WHERE ITEMID ="+ itemid);
    }
    
    //read all Items and store the results into ResultSet rs instance
    public ArrayList<Item>  listAllItems() throws SQLException
    {
        ArrayList<Item> listitem = new ArrayList<>();
        String sql ="SELECT * FROM IOTUSER.ITEM";
        ResultSet rs = st.executeQuery(sql);
        
        
        while(rs.next())
        {//int itemID, String itemname, String category, boolean instock, 
            //double price, int instockquantity, int manufactureid) throws SQLException
            int itemID = rs.getInt(1);
            String itemname = rs.getString(2);
            String category = rs.getString(3);
            boolean instock = rs.getBoolean(4);
            double price = rs.getDouble(5);
            int instockquantity=rs.getInt(6);
            int manufactureid = rs.getInt(7);
            Item item = new Item(itemID,itemname,category,instock,price,instockquantity,manufactureid);
            listitem.add(item);
            
        }
        
        return listitem;
    }
    
    public Item findItemid(int itemid) throws SQLException
    {
      ResultSet rs = st.executeQuery( "SELECT * FROM IOTUSER.ITEM WHERE ITEMID ="+ itemid);
      Item item = null;
      
      if(rs.next())
      {
          int itemID = Integer.parseInt(rs.getString(1));
          String itemname = rs.getString(2);
          String category = rs.getString(3);
          boolean instock = Boolean.parseBoolean(rs.getString(4));
          double price = Double.parseDouble(rs.getString(5));
          int instockquantity=Integer.parseInt(rs.getString(6));
          int manufactureid = Integer.parseInt(rs.getString(7));
          
          item = new Item(itemID,itemname,category,instock,price,instockquantity,manufactureid);
      }
      return item;
    }
}

