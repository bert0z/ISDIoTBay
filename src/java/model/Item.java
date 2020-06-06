/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author danie
 */
public class Item implements Serializable{
    private int itemid;
    private String itemname;
    private String category;
    private boolean instock;
    private double price;
    private int instockquanity;
    private int manufactureid;
    private boolean incart;

    public Item(int itemid, String itemname, String category, boolean instock, double price, int instockquanity, int manufactureid, boolean incart) {
        this.itemid = itemid;
        this.itemname = itemname;
        this.category = category;
        this.instock = instock;
        this.price = price;
        this.instockquanity = instockquanity;
        this.manufactureid = manufactureid;
        this.incart = incart;
    }

    public int getItemid() {
        return itemid;
    }

    public void setItemid(int itemid) {
        this.itemid = itemid;
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public boolean isInstock() {
        return instock;
    }

    public void setInstock(boolean instock) {
        this.instock = instock;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getInstockquanity() {
        return instockquanity;
    }

    public void setInstockquanity(int instockquanity) {
        this.instockquanity = instockquanity;
    }

    public int getManufactureid() {
        return manufactureid;
    }

    public void setManufactureid(int manufactureid) {
        this.manufactureid = manufactureid;
    }

    public boolean isIncart() {
        return incart;
    }

    public void setIncart(boolean incart) {
        this.incart = incart;
    }
    
    public void removeFromCart(boolean incart) {
        incart = false;
    }

   
    
    
}
