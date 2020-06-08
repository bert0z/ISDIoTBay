/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author soyoung
 */

public class Staff implements Serializable{
    private String name;
    private String email;
    private String password;
    private int contactnum;
    private String position;
    private double salary;
    
    public Staff(String name, String email, String password, int contactnum, String position, double salary){
        this.name = name;
        this.email = email;
        this.password = password;
        this.contactnum = contactnum;
        this.position = position;
        this.salary = salary;
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

    public int getContactnum() {
        return contactnum;
    }

    public String getPosition() {
        return position;
    }

    public double getSalary() {
        return salary;
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

    public void setContactnum(int contactnum) {
        this.contactnum = contactnum;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    
}
    

