/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  bert_
 * Created: 13/05/2020
 */

CREATE TABLE PAYMENT (
    PAYMENTID INT,
    CREDITCARDNUMBER INT,
    CARDHOLDER VARCHAR (40),
    EXPIRYDATE DATE,
    CVV INT,
    AMOUNTPAID DOUBLE,
    BILLINGADDRESS VARCHAR (30),
    CUSTOMERID INT
);