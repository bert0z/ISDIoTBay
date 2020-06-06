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
public class User implements Serializable{
    private String name;
    private String email;
    private String password;
    private String gender;
    private String favcol;
    
    public User(String name, String email, String password, String gender, String favcol){
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.favcol = favcol;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getFavcol() {
        return favcol;
    }

    public void setFavcol(String favcol) {
        this.favcol = favcol;
    }
    
    
}