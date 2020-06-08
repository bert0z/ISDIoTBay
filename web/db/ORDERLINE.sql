/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  bert_
 * Created: 08/06/2020
 */

create table ORDERLINE
(
	ITEMID INTEGER not null primary key,
	ITEMNAME VARCHAR(50),
	ITEMPRICE DOUBLE,
	INCART BOOLEAN
);
