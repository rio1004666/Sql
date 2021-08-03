#날짜 :2021 /08/03
#이름 : 강병화
#내용 : SQL 확인문제 

#실습하기 3-1
#실습하기 3-2
#실습하기 3-3

CREATE TABLE `tbl_member`(

	`memberID` CHAR(8) PRIMARY KEY,
	`memberName` CHAR(10) NOT NULL,
	`memberAddress` CHAR(40)

);

CREATE TABLE `tbl_product`(
	`productName` CHAR(10) PRIMARY KEY,
	`cost` INT NOT NULL,
	`makeDate` DATE ,
	`company` CHAR(10) ,
	`amount` INT NOT NULL
);

INSERT INTO `tbl_member` VALUES('jang','장보고', '완도군');
INSERT INTO `tbl_member` VALUES('kang','강감찬', '서울시');
INSERT INTO `tbl_member`(`memberID`,`memberName`)  VALUES('kim','김유신');
INSERT INTO `tbl_member` VALUES('lee','이순신', '서울시');


DELETE FROM `tbl_product` WHERE productName='노트북';
DELETE FROM `tbl_product` WHERE productName='컴퓨터';


INSERT INTO `tbl_product`(`productName`,`makeDate`,`cost`,`company`,`amount`) VALUES('냉장고','2021-05-17',800,'LG',1);
INSERT INTO `tbl_product`(`productName`,`makeDate`,`cost`,`company`,`amount`) VALUES('노트북','2021-05-17',1500,'삼성',5);
INSERT INTO `tbl_product`(`productName`,`makeDate`,`cost`,`company`,`amount`) VALUES('컴퓨터','2021-05-17',1000,'LG',10);


SELECT * FROM `tbl_member` WHERE `memberAddress` = '서울시';



UPDATE `tbl_member` SET `memberID`='heyyo' WHERE `memberID` = 'jang';




