#날짜: 2021 / 08 / 04
#이름: 강병화	
#내용: SQL 고급실습


#직원 테이블 생성하기
CREATE TABLE`MEMBER`(
	`uid` VARCHAR(10) PRIMARY KEY,
	`name` VARCHAR(10),
	`hp` CHAR(13),
	`pos` VARCHAR(10),
	`dep` TINYINT,
	`rdate` DATETIME
);

DROP TABLE `MEMBER`;



#부서 테이블 생성하기



CREATE TABLE `DEPART`(
	`depNo` TINYINT PRIMARY KEY,
	`name` VARCHAR(10),
	`tel` CHAR(12)
);



DROP TABLE `DEPART`;





#매출 테이블 생성하기




CREATE TABLE `SALE` (
	`seq` INT AUTO_INCREMENT PRIMARY KEY,
	`uid` VARCHAR(10),
	`year` YEAR,
	`month` TINYINT,
	`sales` INT
);




#직원 테이블 데이터 입력하기 

INSERT INTO `MEMBER`VALUES('a101','박혁거세','010-1234-1001','부장',101,'2020-11-19 11:39:48');
INSERT INTO `MEMBER`VALUES('a102','김유신','010-1234-1002','차장',101,'2020-11-19 11:39:48');
INSERT INTO `MEMBER`VALUES('a103','김춘추','010-1234-1003','사원',101,'2020-11-19 11:39:48');
INSERT INTO `MEMBER`VALUES('a104','장보고','010-1234-1004','대리',102,'2020-11-19 11:39:48');
INSERT INTO `MEMBER`VALUES('a105','강감찬','010-1234-1005','과장',102,'2020-11-19 11:39:48');
INSERT INTO `MEMBER`VALUES('a106','이성계','010-1234-1006','차장',103,'2020-11-19 11:39:48');
INSERT INTO `MEMBER`VALUES('a107','정철','010-1234-1007','차장',103,'2020-11-19 11:39:48');
INSERT INTO `MEMBER`VALUES('a108','이순신','010-1234-1008','부장',104,'2020-11-19 11:39:48');
INSERT INTO `MEMBER`VALUES('a109','허균','010-1234-1009','부장',104,'2020-11-19 11:39:48');
INSERT INTO `MEMBER`VALUES('a110','정약용','010-1234-1010','사원',105,'2020-11-19 11:39:48');
INSERT INTO `MEMBER`VALUES('a111','박지원','010-1234-1011','사원',106,'2020-11-19 11:39:48');


INSERT INTO `DEPART` VALUES(101,'영업1부','051-512-1001');
INSERT INTO `DEPART` VALUES(102,'영업2부','051-512-1002');
INSERT INTO `DEPART` VALUES(103,'영업3부','051-512-1003');
INSERT INTO `DEPART` VALUES(104,'영업4부','051-512-1004');
INSERT INTO `DEPART` VALUES(105,'영업5부','051-512-1005');
INSERT INTO `DEPART` VALUES(106,'영업지원부','051-512-1006');
INSERT INTO `DEPART` VALUES(107,'인사부','051-512-1007');


INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a101', 2018, 1,  98100);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `SALE` (`uid`, `year`, `month`, `sales`) VALUES ('a108', 2020, 2,  76000);



#부서 테이블 데이터 입력하기
#매출 테이블 데이터 입력하기 


SELECT * FROM `MEMBER` WHERE `name` LIKE '%신'; # 와일드카드 like
# _ 은 한칸만 와일드카드 
SELECT * FROM `MEMBER` WHERE `name` LIKE '김%';
SELECT * FROM `MEMBER` WHERE `name` LIKE '정_';
SELECT * FROM `SALE` WHERE `sales` >= 50000;
SELECT * FROM `SALE` WHERE `sales` NOT BETWEEN 50000 AND 100000;
SELECT * FROM `SALE` WHERE `sales` BETWEEN 10000 AND 100000;
SELECT * FROM `SALE` WHERE `year` IN(2020);
SELECT * FROM `SALE` WHERE `month` IN(1,2);
SELECT * FROM `SALE` WHERE `sales` >= 50000 	AND `sales` < 100000 AND `month` = 1;

SELECT * FROM `SALE` ORDER BY sales DESC; # 내림차순 
SELECT * FROM `MEMBER` ORDER BY `name`;
SELECT * FROM `MEMBER` ORDER BY `name` ASC;
SELECT * FROM `SALE`  ORDER BY `sales`;

SELECT * FROM `SALE` WHERE `sales` > 50000
ORDER BY `year`,`month`,`sales` DESC;

#실습하기 4-3

SELECT * FROM `SALE` LIMIT 0,3;     #  인덱스 , 사이즈(갯수)

SELECT  * FROM `SALE` WHERE `sale` > 50000
	ORDER BY `year` DESC , `month`,`sale` DESC 
	LIMIT 5;
SELECT * FROM `SALE` ORDER BY `sales` DESC   LIMIT 3,5;


#실습하기 4-4 

SELECT SUM(`sales`) AS `매출액 합` FROM `SALE`; #SELECT의 결과는 가상테이블이다 
SELECT COUNT(*) AS `갯수` FROM `SALE`; # 총 테이블에 있는 갯수 
SELECT SUBSTRING(`hp`,10,4) AS `전화번호 끝자리` FROM `MEMBER`;
INSERT INTO `MEMBER` VALUES('b101','을지문덕','010-5555-1234','사장',107,NOW()); # NOW 현재 시스템 시간 

SELECT SUM(`sales`) AS `2018년1월 매출총합` FROM `SALE` WHERE `year` = 2018 AND `month` = 1;

SELECT 

	SUM(`sales`) AS `2018년 2월 5만원 이상 매출총합` ,
	AVG(`sales`) AS `2018년 2월 5만원 이상 매출 평균`
	FROM `SALE`
	WHERE `year` = 2019 AND `month` = 2 AND `sales` >= 50000;
	
SELECT 

	MIN(`sales`) AS `2020년 전체 매출 최소액`,
	
	MAX(`sales`) AS `2020년 전체 매출 최대액`
	
	FROM `SALE`
	
	WHERE `year` IN(2020); #반복문 돌려서 같은것 

	
#실습하기  4-5 

SELECT * FROM `SALE` GROUP BY `year`;
SELECT * FROM `SALE` GROUP BY `uid` ,`year`; # 분류기준이 되고 대표적인 맨앞의 데이터만 뽑는다
 
SELECT `uid`, SUM(`sales`) AS `합계`
	FROM `SALE`
		GROUP BY `uid`;

SELECT 
	`uid` ,
	`year` ,
	SUM(`sales`)  AS `합계` # SUM자체를 가상필드로 사용한다 SELECT 자체를 가상테이블로 사용한다 
FROM `SALE`
WHERE 
 	`sales` >= 50000
GROUP BY 
 		`uid`,`year`
ORDER BY
	`합계` DESC;
	
	# uid 즉 아이디가 같은애들끼리 집계를 낸다 
SELECT `uid` , COUNT(*) AS `건수` FROM `SALE` GROUP BY `uid`;
SELECT `uid` , SUM(`sales`) AS `매출합계` FROM `SALE` GROUP BY `uid`;
SELECT `uid` , AVG(`sales`) AS `매출평균액` FROM `SALE` GROUP BY `uid`;

SELECT `uid`,
 		 `year`,
 		 SUM(`sales`) AS `합계`
 FROM `SALE` 
 WHERE `sales` >= 50000
 GROUP BY `uid`,`year` #중복을 제거하는 작업 그룹핑 분류하는 역할 # 분류기준을 uid와 year쌍으로 키를 가짐 
 ORDER BY `합계` DESC;

SELECT `uid`,`year`,SUM(sales) AS `합계`
FROM `SALE`
GROUP BY `uid`,`year`
ORDER BY `year` ASC, `합계` DESC; #먼저 연도별로 오름차순한후에 합계가 내림차순 

SELECT `uid` ,
	SUM(sales) AS `합계`
		FROM `SALE`
		GROUP BY `uid`
		HAVING SUM(`sales`) >= 200000;
		
		
SELECT `uid`,
			SUM(`sales`) AS '합계'
			FROM `SALE`
			WHERE `sales` >= 100000
			GROUP BY `uid`,`year`
			HAVING SUM(`sales`) >= 200000 #GROUP BY의 조건은 having이다
			ORDER BY `합계` DESC;

	
CREATE TABLE `SALE2` LIKE `SALE`;
INSERT INTO `SALE2` SELECT * FROM `SALE`;

UPDATE `SALE2` SET 
			`year` = `year` +3;
			
SELECT * FROM `SALE`
UNION
SELECT * FROM `SALE2`; #가상테이블이다 

#SQL의 꽃 JOIN 

SELECT * FROM `SALE` INNER JOIN `MEMBER` ON SALE.uid = MEMBER.uid;
#FK 외래키 => 조인을 당하는 테이블의 키를 외래키 
#            => 조인을 하는 테이블의키는 거의 기본키다 
 #            => 테이블의 이름을 그대로 사용하지 않고 보통 별칭을 사용한다 
 
 SELECT a.seq,a.uid ,a.sales ,b.name,b.pos #보통은 설별해서 뽑는다 
 FROM `SALE` AS a
 JOIN `MEMBER` AS b
 #ON a.uid = b.uid; #조인의 조건 ON  만약 조건필드가 같다면 
 USING(`uid`);# USING을 사용한다 
 
 
 
 SELECT * FROM `SALE` AS a
 JOIN `MEMBER` AS b ON a.uid = b.uid
 JOIN `DEPART` AS c ON b.dep = c.depNo;  #이름이 다를수도 있다 


SELECT * FROM `SALE` LEFT JOIN `MEMBER` ON `SALE`.uid = `MEMBER`.uid;

SELECT * FROM `SALE` RIGHT JOIN `MEMBER` ON `SALE`.uid = `MEMBER`.uid;
			
			
#확인문제 1
SELECT uid AS `직원아이디`,
m.name AS `직원이름`,
pos AS `직원직급` ,
m.dep AS `직원부서명`  
FROM `MEMBER` AS m
JOIN `DEPART` AS b
ON m.dep = b.depNo;

SELECT uid AS `직원아이디`,
m.name AS `직원이름`,
pos AS `직원직급` ,
m.dep AS `직원부서명`  
FROM `MEMBER`,`DEPART`; #조인방식1번
SELECT uid AS `직원아이디`,
m.name AS `직원이름`,
pos AS `직원직급` ,
m.dep AS `직원부서명`  
FROM `MEMBER` AS m,`DEPART` AS d; #조인방식2번 




#확인문제 2
SELECT SUM(`sales`) AS `김유신직원의 매출 합`
	    FROM `SALE`   AS s
		 JOIN `MEMBER` AS m
		 ON s.uid = m.uid
		 WHERE m.name = '김유신' AND `year` = 2019;# 직원의 기본키는 유일 즉 uid를 조인시켜서 그 이름에 해당하는 놈의 매출액을 총합해버리면 된다 


SELECT 
	b.`name`,
	c.`name`,
	b.`pos`,
	SUM(`sales`) AS `매출합`	

  #조인은 여러개의 정보를 교집합해서 보기위해서 
FROM `SALE` AS a
JOIN `MEMBER` AS b ON a.uid = b.uid
JOIN `DEPART` AS c ON b.dep = c.depNo
WHERE `sales` >= 50000 AND `sales` <= 100000 
GROUP BY a.`uid` #uid별로 즉 사용자 아이디별로 매출합 이 10만이상 
HAVING `매출합` >= 100000
ORDER BY `매출합` DESC; #그룹핑된 아이디별로 내림차순 









