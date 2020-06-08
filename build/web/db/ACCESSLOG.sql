/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Soyoung
 * Created: 14/05/2020
 */
DROP TABLE ACCESSLOG;

CREATE TABLE ACCESSLOG (
    ACCESSTYPE VARCHAR (12),
    TIME VARCHAR (60),
    EMAIL VARCHAR (40),
    ACCOUNTTYPE VARCHAR(40)
);

INSERT INTO ACCESSLOG (ACCESSTYPE, TIME, EMAIL, ACCOUNTTYPE)
VALUES ('Login', '2020-06-03 15:06:23', 'syong195@gmail.com', 'customer'),
('Login', '2020-06-03 15:06:23', 'syong195@gmail.com', 'customer'),
('Logout', '2020-06-03 15:34:24', 'hjekf435@gmail.com', 'customer'),
('Login', '2020-06-03 15:45:54', 'awjwd143@gmail.com', 'customer'),
('Login', '2020-06-04 16:46:41', 'syong195@gmail.com', 'customer'),
('Logout', '2020-06-04 19:06:25', 'syong195@gmail.com', 'customer'),
('Logout', '2020-06-05 09:06:23', 'awjwd143@gmail.com', 'customer'),
('Logout', '2020-06-05 10:25:33', 'hjekf435@gmail.com', 'customer'),
('Login', '2020-06-05 10:34:52', 'oiabf395@daum.com', 'customer'),
('Login', '2020-06-06 13:15:21', 'fjjoa923@daum.com', 'customer'),
('Logout', '2020-06-06 15:34:54', 'fjjoa923@daum.com', 'customer'),
('Login', '2020-06-07 08:34:36', 'selth225@gmail.com', 'staff'),
('Login', '2020-06-07 13:26:44', 'syong195@gmail.com', 'staff'),
('Logout', '2020-06-07 13:40:22', 'selth225@gmail.com', 'staff'),
('Login', '2020-06-08 11:20:34', 'asidf555@daum.com', 'staff'),
('Logout', '2020-06-08 11:30:37', 'zksdf888@daum.com', 'staff'),
('Logout', '2020-06-08 14:34:39', 'jjsiw344@daum.com', 'staff'),
('Login', '2020-06-08 15:25:59', 'zksdf888@daum.com', 'staff'),
('Logout', '2020-06-08 21:34:57', 'jjsiw344@daum.com', 'staff'),
('Login', '2020-06-08 22:15:18', 'jjsiw344@daum.com', 'staff');

