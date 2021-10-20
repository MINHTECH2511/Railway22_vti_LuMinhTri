CREATE DATABASE IF NOT EXISTS Testing_System;
USE testing_system;

DROP TABLE IF EXISTS departments,
				Positions ,
				Accounts,
				`Groups`,
				Group_Accounts,
				Type_questions,
				Category_Questions,
				Questions,
				Exams,
				Exam_Questions;
CREATE TABLE departments
(
	department_id		INT AUTO_INCREMENT PRIMARY KEY,
    department_name		VARCHAR(100)
);

CREATE TABLE Positions
(
	Position_id			INT AUTO_INCREMENT PRIMARY KEY,
    Position_name		ENUM ("DEV","TEST","Srum Master","PM") -- ép người dùng hoặc là 1 trong những giá trị trong ngoặc
);

CREATE TABLE Accounts
(
	Account_id			INT AUTO_INCREMENT PRIMARY KEY,
    Email				VARCHAR(50),
    Use_name			VARCHAR(50),
    Full_name			VARCHAR(50),
    Department_id		INT,
    Position_id			INT,
    Create_Date			DATE
);

CREATE TABLE `Groups`
(
	Group_id			INT AUTO_INCREMENT PRIMARY KEY,
    Group_name			VARCHAR(50),
    Creator_id			INT,
    Create_Date			DATE

);

CREATE TABLE Group_Account
(
	Group_id 			INT AUTO_INCREMENT,
    Account_id			INT,
    Join_Date			Date,
    PRIMARY KEY( group_id, account_id) -- định danh 2 dòng, ở đây có group_id và account)id
);

CREATE TABLE Type_questions
(
Type_id					INT AUTO_INCREMENT PRIMARY KEY,
Type_name				ENUM("essay","mutiple-Choice")
);

CREATE TABLE Category_Questions
(
Category_ID 			INT AUTO_INCREMENT PRIMARY KEY,
Category_Name 			VARCHAR(50)
);

CREATE TABLE Questions
(
Question_id 			INT AUTO_INCREMENT PRIMARY KEY,
Content 				TEXT,
Category_id				INT,
Type_id					INT,
Creator_id				INT,
Creator_Date		 	DATE
);

CREATE TABLE Answers
(
Answer_ID 				INT AUTO_INCREMENT PRIMARY KEY,
Content					TEXT,
Question_ID 			INT,
is_Correct				BINARY -- binarry 0 hoặc 1 hoặc sử dụng loại ENUM("y","n")
);

CREATE TABLE Exams
(
Exam_ID 				INT AUTO_INCREMENT PRIMARY KEY,
`Code`					CHAR(10),-- `` dấu backtick/  và code luôn để CHAR=10
Title					VARCHAR(100),
Category_id				INT,
Duration 				INT,
Creator_id				INT,
Creator_Date			DATE
);

CREATE TABLE Exam_Questions
(
Exam_id			INT,
Question_id		INT,
PRIMARY KEY( exam_id, Question_id)
);

