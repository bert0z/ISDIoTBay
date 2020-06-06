/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

//import java.time.LocalDateTime;
/**
 *
 * @author soyoung
 */
public class AccessLog {
    
    private String accessType;
    private String time;
    private String email;
    private String accountType;

    public AccessLog(String accessType, String time, String email, String accountType) {
        this.accessType = accessType;
        this.time = time;
        this.email = email;
        this.accountType = accountType;
    }

    public String getAccessType() {
        return accessType;
    }

    public String getTime() {
        return time;
    }

    public String getEmail() {
        return email;
    }
    
    public String getAccountType() {
        return accountType;
    }

    public void setAccessType(String accessType) {
        this.accessType = accessType;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
     public void setAccountType(String accountType) {
        this.accountType = accountType;
    }
    
}
