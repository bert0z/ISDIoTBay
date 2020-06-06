
package model;

import java.io.Serializable;

/**
 *
 * @author danie
 */
public class OrderLine implements Serializable{
    private int itemid;
    private String itemname;
    private double itemprice;
    private boolean incart;

    public OrderLine(int itemid, String itemname, double itemprice, boolean incart) {
        this.itemid = itemid;
        this.itemname = itemname;
        this.itemprice = itemprice;
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

    public double getItemprice() {
        return itemprice;
    }

    public void setItemprice(double itemprice) {
        this.itemprice = itemprice;
    }

    public boolean isIncart() {
        return incart;
    }

    public void setIncart(boolean incart) {
        this.incart = incart;
    }
    
    
    
    
}