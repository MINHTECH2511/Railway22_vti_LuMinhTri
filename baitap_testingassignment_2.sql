CREATE DATABASE IF NOT EXISTS testing_system; 
USE testing_system; 

DROP TABLE IF EXISTS 
department,
 positions,
 accounts,
`groups` ,
group_account,
type_questions ,
questions ,
answers,
exams,
exam_question
;
  
CREATE TABLE department 
 
(
	department_id		TINYINT	AUTO_INCREMENT PRIMARY KEY,
    department_name 	VARCHAR(100) NOT NULL
); 

CREATE TABLE positions
(
	position_id			TINYINT AUTO_INCREMENT PRIMARY KEY,
    position			ENUM ("dev","test","srum Master","pm") DEFAULT "dev"

    );
CREATE TABLE  accounts
(
	account_id			INT AUTO_INCREMENT PRIMARY KEY,
	email 				VARCHAR(50)UNIQUE NOT NULL,
	username			VARCHAR(100) UNIQUE NOT NULL,
    fullname            VARCHAR(100) NOT NULL,
    gender				BIT DEFAULT 1,
    department_id		TINYINT,
    position_id			TINYINT,
    create_date			DATE,
						FOREIGN KEY (department_id) 			REFERENCES departments( department_id),
						FOREIGN KEY (Position_id) 				REFERENCES Positions( Position_id)
); 

CREATE TABLE  `groups` 
(
	group_id			TINYINT AUTO_INCREMENT PRIMARY KEY,
    group_name 			VARCHAR(100) NOT NULL,
    creator_id			INT ,
    create_date			DATE
   );
   
CREATE TABLE group_account
(
	group_id			TINYINT,
    account_id	    	INT, 
    join_date			DATE,

						PRIMARY KEY( group_id, Account_id),
						FOREIGN KEY(Group_id)REFERENCES `Groups`(Group_id),
						FOREIGN KEY(Account_id)REFERENCES Accounts(Account_id)
);
    
    
CREATE TABLE type_questions 

	(
    type_id         	TINYINT AUTO_INCREMENT PRIMARY KEY,
    type_name 			ENUM ("essay","multiple_choice") DEFAULT "multiple_choice"
    );
    CREATE TABLE category_questons
    
    (
    category_id    		TINYINT AUTO_INCREMENT PRIMARY KEY,
    category_name		VARCHAR(100) NOT NULL
    );
     
    
CREATE TABLE questions 

   (
   question_id 			INT AUTO_INCREMENT PRIMARY KEY,
   content              TEXT,
   category_id			TINYINT,
   type_id				TINYINT,
   creator_id			INT,
   create_date			DATE,
						FOREIGN KEY (Creator_id) REFERENCES Accounts(Account_id),
						FOREIGN KEY (Category_id) REFERENCES Category_Questions(Category_id),
						FOREIGN KEY (Type_id) REFERENCES Type_Questions(Type_id)
		);
CREATE TABLE answers
   (
   answers_id 			INT AUTO_INCREMENT PRIMARY KEY,
   content              TEXT,
   question_id			INT,
   iscorrect			BIT DEFAULT 1
   );
   
CREATE TABLE exams
   (
   exam_id				INT AUTO_INCREMENT PRIMARY KEY,
   `code` 				CHAR(10) UNIQUE NOT NULL ,
   title 				VARCHAR(200)NOT NULL ,
   category_id  		TINYINT,
   duration				TINYINT,
   creator_id			INT,
   create_date 			DATE,
						FOREIGN KEY(Creator_id)REFERENCES Accounts(Account_id)
);
   
CREATE TABLE exam_questions
   (
   exam_id 				INT UNSIGNED,
   question_id			INT UNSIGNED,
						PRIMARY KEY (exam_id,question_id),
						FOREIGN KEY (Question_id)REFERENCES Questions(Question_id),
						FOREIGN KEY(Exam_id)REFERENCES Exams(Exam_id)
   );
   
