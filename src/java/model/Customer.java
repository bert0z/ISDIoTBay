/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
/**
 *
 * @author bert_
 */
public class Customer implements Serializable{
    private String email;
    private String name;
    private String password;
    private String address;
    private int postcode;
    private int contactnum;
            
    
    public Customer(String email, String name, String password, String address, int postcode, int contactnum){
        this.name = name;
        this.email = email;
        this.password = password;
        this.address = address;
        this.postcode = postcode;
        this.contactnum = contactnum;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }
    
    public String getPassword() {
        return password;
    }

    public String getAddress() {
        return address;
    }

    public int getPostcode() {
        return postcode;
    }

    public int getContactnum() {
        return contactnum;
    }
    
    

    public void setName(String name) {
        this.name = name;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPostcode(int postcode) {
        this.postcode = postcode;
    }

    public void setContactnum(int contactnum) {
        this.contactnum = contactnum;
    }

    
    
}