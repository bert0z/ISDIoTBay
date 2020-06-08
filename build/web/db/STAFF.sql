/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  bert_
 * Created: 13/05/2020
 */

DROP TABLE STAFF;

CREATE TABLE STAFF (
    EMAIL VARCHAR (40),
    NAME VARCHAR (40),
    PASSWORD VARCHAR (40),
    CONTACTNUM INTEGER,
    POSITION VARCHAR (40),
    SALARY DOUBLE 
);


INSERT INTO STAFF (EMAIL, NAME, PASSWORD, CONTACTNUM, POSITION, SALARY)
VALUES ('syong0195@gmail.com', 'Soyoung Kim', 'syong0827', 0481777283, 'Manager', 32000),
('akmns822@gmail.com', 'Alex Kim', 'qweur9234', 0483424973, 'Manager', 32000),
('jklas8448@gmail.com', 'Rachel Lee', 'cndkw9824', 0412370434, 'Manager', 32000),
('zmmzj000@gmail.com', 'Victoria Angelica', 'aodsi329', 048423432, 'Manager', 32000),
('ullus282@gmail.com', 'Anthony Seo', 'feihf9899', 041243445, 'Manager', 32000),
('aalks222@gmail.com', 'Haeley Linda', 'njsdk1243', 0432894734, 'Team Leader', 48000),
('selth225@gmail.com', 'Juhyeon Park', 'ncido8473', 0183294037, 'Team Leader', 48000),
('kksso888@gmail.com', 'Victor Rio', 'aohdf3478', 0443284595, 'Team Leader', 48000),
('aiisb9023@gmail.com', 'Russel Cao', 'ajsio9234', 0445456322, 'Team Leader', 48000),
('uwhsa0023@naver.com', 'Sarah Lim ', 'fwfhw9998', 0412344566, 'Casual Staff', 28000),
('djdyw223@naver.com', 'Amy Jeong', 'dxnaj1093', 0424354666, 'Casual Staff', 28000),
('jaoos8346@naver.com', 'Isaac Choo', 'aihwr3742', 042345623, 'Casual Staff', 28000),
('zzmsj339@naver.com', 'Davil Jun', 'csnjk9832', 0424390843, 'Casual Staff', 28000),
('iemds299@naver.com', 'Jun Kim', 'xaohw8123', 0458903799, 'Part-time Staff', 30500),
('lllsk333@naver.com', 'Marcus Shaun', 'dnwjif9734', 0489056735, 'Part-time Staff', 30500),
('asidf555@daum.com', 'Mike Seong', 'cnsjd9234', 0423907549, 'Part-time Staff', 30500),
('zksdf888@daum.com', 'Hazel Seo', 'fjwei3244', 0428934895, 'Part-time Staff', 30500),
('askns333@daum.com', 'Joel Im', 'nweib4923', 0412903843, 'Part-time Staff', 30500),
('zmdjq812@daum.com', 'Barry Jeong', 'fjwbe2034', 0488903475, 'Full-time Staff', 31000),
('hhieh992@daum.com', 'Seongdong Hao', 'fnjwe9328', 0423904275, 'Full-time Staff', 31000),
('jjsiw344@daum.com', 'jess You', 'akwoh9807', 0412390475, 'Full-time Staff', 31000);

