DROP DATABASE IF EXISTS fresher;
CREATE DATABASE fresher;
USE fresher;

DROP TABLE IF EXISTS Trainee;
CREATE TABLE Trainee 
(
TraineeID		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Full_Name       VARCHAR (100),
Birth_Date       DATE  NOT NULL ,
Gender         ENUM ("male","female","unknown","PM") DEFAULT "unknown",
ET_IQ           TINYINT UNSIGNED CHECK (ET_IQ>=20),
ET_English      TINYINT UNSIGNED (ET_English>=20),
Training_Class  CHAR(10),
Evaluation_Notes TEXT 
);
 
 -- Ta có database để quản lý fresher, có table Trainee với các trường như sau:
--  TraineeID: định danh của thực tập sinh (auto increment)
--  Full_Name: tên đầy đủ của thực tập sinh
--  Birth_Date: ngày sinh của thực tập sinh
--  Gender: chỉ có 3 giá trị male, female, and unknown
--  ET_IQ: Entry test point (IQ) - Điểm test đầu vào của thực tập sinh (integer có
-- giá trị từ 0  20)
--  ET_Gmath: Entry test point (Gmath) - Điểm test đầu vào của thực tập sinh
-- (integer có giá trị từ 0  20)
--  ET_English: Entry test point (English) - Điểm test đầu vào của thực tập sinh
-- (integer có giá trị từ 0  50)
--  Training_Class: mã lớp của thực tập sinh đang học
--  Evaluation_Notes: 1 vài note đánh giá (free text).