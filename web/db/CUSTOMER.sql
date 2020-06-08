/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  soyoung
 * Created: 13/05/2020
 */

CREATE TABLE CUSTOMER (
    EMAIL VARCHAR (40),
    NAME VARCHAR (40),
    PASSWORD VARCHAR (40),
    ADDRESS VARCHAR (40),
    POSTCODE INTEGER,
    CONTACTNUM INTEGER 
);

INSERT INTO CUSTOMER (EMAIL, NAME, PASSWORD, ADDRESS, POSTCODE, CONTACTNUM)
VALUES ('syong195@gmail.com', 'Hazel Kim', 'sy0827', '12 Nelson rd', 2070, 0481712388),
('hjekf435@gmail.com', 'Jessica Jung', 'hjdks2345', '13 Harris st', 2071, 0483347290),
('awjwd143@gmail.com', 'Youra Hye', 'jk9904', '308 Millay road', 2072, 0419423784),
('alinr999@naver.com', 'Andy Choo', 'kl0000', '23 Wolslwy', 2073, 0483934859),
('hhfkh888@naver.com', 'Jeremy Kim', 'jjjj9928', '19/30 Johnston st', 2074, 0454935890),
('jilib190@naver.com', 'Eunseo Park', 'fjkq0000', '99-2 Coat rd', 2075, 0412390853),
('syong0195@naver.com', 'April Kim', 'kksg0098', '47/23 Mary Anne rd', 2076, 0443960684),
('syong195@daum.com', 'Angie You', 'iinmd092', '1 Hamilton st', 2077, 0439408549),
('oiabf395@daum.com', 'Alex Park', 'ioii9234', '49 Haymarket', 2078, 0465463654),
('fjjoa923@daum.com', 'David Lee', 'zyonk2827', '87/23 Bullong rd', 2079, 0487686587),
('qliwa195@daum.com', 'Ale Portman', 'llass00012', '7 Rose st', 2080, 0413454678),
('jkabs000@gmail.com', 'Joel Min', 'bless1108', '84 Monavale st', 2081, 0485967978),
('jklsn774@gmail.com', 'Mattew Jang', 'ooaza6677', '61-23 Stoneville rd', 2082, 0457644654),
('dshhf984@naver.com', 'Haely Burnard', 'sll8844', '2 Kiama st', 2083, 0420395489),
('xiwod093@naver.com', 'Stephany Swift', 'xxyz7654', '16 Success st', 2084, 0456904596),
('asdhf832@naver.com', 'Jake Allen', 'lwerd1254', '34-41 Kingston rd', 2085, 0413204234),
('aihwe929@naver.com', 'Anthony Macathy', 'lafwd3321', '19 Sliderin rd', 2086, 0454609546),
('adjwf373@daum.com', 'Sarah Kim', 'lksnd0083', '1 Griffindor st', 2087, 0465464633),
('adwio000@daum.com', 'Juliana Ryu', 'zzoo2039', '42 Wolstonecrafe', 2088, 0424354656),
('asfjd333@daum.com', 'Albert Lee', 'ooju9928', '99 Lindfield', 2089, 0423042435);