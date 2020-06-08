/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Jingwen CAO
 * Created: 14/05/2020
 */
drop table PAYMENT;

create table PAYMENT
(
	ID INT not null primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	METHOD VARCHAR(100) not null,
	AMOUNT DOUBLE default 0 not null,
	CARDNAME VARCHAR(100),
	CARDNUMBER VARCHAR(16),
	EXPIRYDATE VARCHAR(4),
	CVV VARCHAR(3),
	PAYMENTDATE TIMESTAMP default CURRENT_TIMESTAMP,
	ORDERID INTEGER
);

insert into PAYMENT(METHOD, AMOUNT, CARDNAME, CARDNUMBER, EXPIRYDATE, CVV, ORDERID)
values ('Credit Card', 99.8, 'Molly', '1234567', '0622', '456', 1),
('Direct Deposit', 99.8, 'Jack', '76543', '0622', '234', 1);