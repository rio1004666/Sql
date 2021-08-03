#날짜 2021/08/03
#이름: 강병화 
#내용: 테이블 설정 

#실습하기 2-1 
CREATE TABLE `USER2`(
      `uid` VARCHAR(10) PRIMARY KEY,
      `name` VARCHAR(10),
      `hp` CHAR(13),
      `age` INT
);
INSERT INTO `USER2` VALUES('A104','김춘추','010-1234-1111',23);
INSERT INTO `USER2` VALUES('A102','강감찬','010-1234-2222',24);
INSERT INTO `USER2` VALUES('A103','이순신','010-1234-3333',25);


CREATE TABLE `USER3`(
      `uid` VARCHAR(10) PRIMARY KEY,
      `name` VARCHAR(10),
      `hp` CHAR(13) UNIQUE,
      `age` INT
);

INSERT INTO `USER3` VALUES('A105','김춘추','010-1234-4444',23);
INSERT INTO `USER3` VALUES('A102','강감찬','010-1234-2222',24);
INSERT INTO `USER3` VALUES('A103','이순신','010-1234-3333',25);

CREATE TABLE `USER5` (
	`seq` INT AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(10),
	`gender` TINYINT,
	`age`     INT,
	`addr`   VARCHAR(255)
);
INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES('김유신', 1 , 25, '김해시');
INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES('선덕여왕', 2 , 50, '부산시');
INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES('김춘추', 1 , 34, '서울특별시');
INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES('신사임당', 2 , 20, '대구시');
INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES('이순신', 1 , 56, '강릉시');

#실습하기 2-4
CREATE TABLE `USER6` LIKE `USER5`;

INSERT INTO `USER6` SELECT * FROM `USER5`;












