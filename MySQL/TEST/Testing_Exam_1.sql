DROP DATABASE IF EXISTS Testing_Exam_1_VN;
CREATE DATABASE IF NOT EXISTS Testing_Exam_1_VN;
 USE Testing_Exam_1_VN;

DROP TABLE IF EXISTS customer,
car,
`order`;

CREATE TABLE customer
( 
customer_id            TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`name`                  VARCHAR(100)NOT NULL,
phone                   INT(100) NOT NULL ,
email                   VARCHAR(50) NOT NULL UNIQUE KEY,
address                 VARCHAR(300) NOT NULL,
note                    TEXT
);

CREATE TABLE car
(
car_id                  TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
maker                   ENUM ("HONDA","TOYOTA","NISSAN"),
model                   VARCHAR (100),
color                   VARCHAR (100),
`year`                  DATE,
note                    TEXT
);


CREATE TABLE `order`
(
order_id             TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
customer_id          TINYINT UNSIGNED ,
car_id                 TINYINT UNSIGNED ,
amount                INT UNSIGNED DEFAULT 1 ,
sale_price            INT UNSIGNED ,
order_date            DATE,
delivery_date         DATE,
delivery_address      TEXT,
`status`              ENUM ("0","1","2") DEFAULT "0",
note                  TEXT,
FOREIGN KEY (customer_id ) 		REFERENCES customer( customer_id ),
FOREIGN KEY (car_id ) 				REFERENCES car(car_id)
);




