DROP DATABASE IF EXISTS Testing_System;
CREATE DATABASE IF NOT EXISTS Testing_System;
USE Testing_System;

DROP TABLE IF EXISTS departments,
				Positions,
				Accounts,
				`Groups`,
				Group_Accounts,
				Type_Questions,
				Category_Questions,
				Questions,
                Answers,
				Exams,
				Exam_Questions;
CREATE TABLE departments
(
	department_id		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    department_name		VARCHAR(100) NOT NULL
);

CREATE TABLE Positions
(
	Position_id			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Position_name		ENUM ("DEV","TEST","Scrum Master","PM") DEFAULT "TEST"
);

CREATE TABLE Accounts
(
	Account_id								TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    gender									BIT DEFAULT 1,
    Email									VARCHAR(50) NOT NULL UNIQUE KEY,
    Use_name								VARCHAR(50) NOT NULL UNIQUE KEY,
    Full_name								VARCHAR(50) NOT NULL,
    department_id							TINYINT UNSIGNED,
    Position_id								TINYINT UNSIGNED,
    Create_Date								DATE,
    FOREIGN KEY (department_id) 			REFERENCES departments( department_id),
    FOREIGN KEY (Position_id) 				REFERENCES Positions( Position_id)
);

CREATE TABLE `Groups`
(
	Group_id								TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Group_name								VARCHAR(50) NOT NULL,
    Creator_id								TINYINT UNSIGNED,
    Create_Date								DATE

);

CREATE TABLE Group_Accounts
(
	Group_id 								TINYINT UNSIGNED AUTO_INCREMENT,
    Account_id								TINYINT UNSIGNED,
    Join_Date								Date,
			PRIMARY KEY( group_id, Account_id),
			FOREIGN KEY(Group_id)REFERENCES `Groups`(Group_id),
			FOREIGN KEY(Account_id)REFERENCES Accounts(Account_id)
);

CREATE TABLE Type_Questions
(
Type_id										TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Type_name									ENUM("essay","mutiple-Choice") DEFAULT "mutiple-Choice"
);

CREATE TABLE Category_Questions
(
Category_id 								TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Category_Name 								VARCHAR(50) NOT NULL
);

CREATE TABLE Questions
(
Question_id 								TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Content 									TEXT,
Category_id									TINYINT UNSIGNED,
Type_id										TINYINT UNSIGNED,
Creator_id									TINYINT UNSIGNED,
Creator_Date		 						DATE,
			FOREIGN KEY (Creator_id) REFERENCES Accounts(Account_id),
			FOREIGN KEY (Category_id) REFERENCES Category_Questions(Category_id),
			FOREIGN KEY (Type_id) REFERENCES Type_Questions(Type_id)
);

CREATE TABLE Answers
(
Answer_id 									TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Content										TEXT,
Question_id 								TINYINT UNSIGNED,
is_Correct									BIT DEFAULT 0
);

CREATE TABLE Exams
(
Exam_id 									TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`Code`										CHAR(10),
Title										VARCHAR(100) NOT NULL,
Category_id									TINYINT UNSIGNED,
Duration 									TINYINT UNSIGNED,
Creator_id									TINYINT UNSIGNED,
Creator_Date								DATE,
			FOREIGN KEY(Creator_id)REFERENCES Accounts(Account_id)
);

CREATE TABLE Exam_Questions
(
Exam_id										TINYINT UNSIGNED,
Question_id									TINYINT UNSIGNED,
			PRIMARY KEY( Exam_id, Question_id),
			FOREIGN KEY (Question_id)REFERENCES Questions(Question_id),
			FOREIGN KEY(Exam_id)REFERENCES Exams(Exam_id)
);