#날짜: 2021/08/05
#이름: 강병화
#내용: SQL 실습과제 

#실습1
CREATE TABLE `Book` (
	`bookid`			INT PRIMARY KEY AUTO_INCREMENT,
	`bookname`		VARCHAR(20),
	`publisher`		VARCHAR(20),
	`price`			INT
);
DROP TABLE `Book`;
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('축구의 역사', '굿스포츠', 7000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('축구아는 여자', '나무수', 13000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('축구의 이해', '대한미디어', 22000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('골프 바이블', '대한미디어', 35000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('피겨교본', '굿스포츠', 8000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('역도 단계별기술', '굿스포츠', 6000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('야구의 추억', '이상미디어', 20000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('야구를 부탁해', '이상미디어', 13000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('올림픽 이야기', '삼성당', 7500);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('Olympic Champions', 'Pearson', 13000);

#실습2
CREATE TABLE `Customer` (
	`custid`		INT AUTO_INCREMENT PRIMARY KEY,
	`name`		VARCHAR(10),
	`address`	VARCHAR(30),
	`phone`		CHAR(13)
);

INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('박지성', '영국 맨체스터', '000-5000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO `Customer` (`name`, `address`) VALUES ('박세리', '대한민국 대전');


#실습3
CREATE TABLE `Orders` (

	`orderid`		INT AUTO_INCREMENT PRIMARY KEY,
	`custid`			INT,
	`bookid`			INT,
	`saleprice`		INT,
	`orderdate`		DATE
	
);

INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1,1,6000, '2014-07-01');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1,3,21000, '2014-07-03');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (2,5,8000, '2014-07-03');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3,6,6000, '2014-07-04');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (4,7,20000, '2014-07-05');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1,2,12000, '2014-07-07');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (4,8,13000, '2014-07-07');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3,10,12000, '2014-07-08');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (2,10,7000, '2014-07-09');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3,8,13000, '2014-07-10');

#실습4


SELECT c.custid,c.name,c.address
FROM Customer c;


#실습5


SELECT b.bookid,b.bookname,b.publisher,b.price
FROM Book b;


#실습6

SELECT DISTINCT b.publisher 
FROM Book b;


#실습7

SELECT *
FROM Book b
WHERE b.price < 20000;


#실습8


SELECT *
FROM Book b
WHERE b.price >= 10000 AND b.price <= 20000;



#실습9



SELECT *
FROM Book b
WHERE `publisher` IN('굿스포츠','대한미디어');


#실습10


SELECT b.publisher
FROM Book b
WHERE b.bookname = '축구의 역사';



#실습11

SELECT b.publisher
FROM Book b
WHERE b.bookname LIKE '%축구%';


#실습12

SELECT *
FROM Book b
WHERE b.bookname LIKE '_구%';



#실습13

SELECT *
FROM Book b
WHERE b.bookname LIKE '%축구%'
AND b.price >= 20000;



#실습14
SELECT *
FROM Book b
ORDER BY b.bookname;


#실습15

SELECT *
FROM Book b
ORDER BY b.price,b.bookname;

#실습16

SELECT *
FROM Book b
ORDER BY b.price DESC , b.publisher ASC;

#실습17

SELECT 
	SUM(o.saleprice) AS `총판매액`
FROM Orders o


#실습18

SELECT 
SUM(o.saleprice)
FROM Orders o
WHERE o.custid = 2;



#실습19

SELECT 
SUM(o.saleprice) AS `총판매액`,
AVG(o.saleprice) AS `평균값`,
MIN(o.saleprice) AS `최저가`,
MAX(o.saleprice) AS `최고가`
FROM Orders o



#실습20

SELECT 
COUNT(*)
FROM Orders;


#실습21

SELECT
o.custid,COUNT(*) AS `수량`
FROM Orders o
WHERE o.saleprice >= 8000
GROUP BY o.custid
HAVING `수량` >= 2;



#실습22





SELECT *
FROM Customer c 
JOIN Orders o
USING(`custid`);




#실습23


SELECT * 
FROM Customer c
JOIN Orders o
ON c.custid = o.custid
ORDER BY c.custid ASC;


#실습24


SELECT c.name, o.saleprice
FROM Customer c
JOIN Orders o
ON c.custid = o.custid;



#실습25

SELECT c.name, SUM(o.saleprice)
FROM Customer c
JOIN Orders o
ON c.custid = o.custid
GROUP BY c.name
ORDER BY c.name;


#실습26

SELECT c.name,b.bookname
FROM Book b
JOIN Orders o
ON o.bookid = b.bookid
JOIN Customer c
ON o.custid = c.custid;

#실습27

SELECT c.name, b.bookname
FROM Book b
JOIN Orders o
ON o.bookid = b.bookid
JOIN Customer c
ON o.custid = c.custid
WHERE o.saleprice = 20000;


#실습28


SELECT
	bookname

FROM Book
WHERE `price` = (SELECT MAX(`price`) FROM Book); # 조건절에도 값으로도 뽑고  붙고 가상테이블도 만든다 




#실습29



INSERT INTO Book(`bookname`,`publisher`) VALUES('스포츠의학','한솔의학서적');  



#실습30



INSERT INTO Book(`bookname`,`publisher`,`price`) VALUES('스포츠의학','한솔의학서적',90000);



#실습31



UPDATE Customer c
SET c.address = '대한민국 부산'
WHERE c.custid = 5;



#실습32


DELETE FROM Customer WHERE custid = 5;

