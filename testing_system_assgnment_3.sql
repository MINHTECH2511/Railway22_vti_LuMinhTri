SHOW DATABASES;
USE testing_system;
SELECT * FROM departments;
SELECT * FROM positions;
SELECT * FROM accounts;
SELECT * FROM `groups`;
SELECT * FROM `group_accounts`;
SELECT * FROM type_questions;
SELECT * FROM category_questions;
SELECT * FROM questions;
SELECT * FROM answers;
SELECT * FROM exams;
SELECT * FROM exam_questions;
-- Question 1: Thêm ít nhất 10 record vào mỗi table
-- Question 2: lấy ra tất cả các phòng ban
-- Question 3: lấy ra id của phòng ban "Sale"
SELECT  department_id
FROM dedepartments
WHERE department_name=`sale`;

-- Question 4: lấy ra thông tin account có full name dài 
-- nhất
SELECT *
FROM `accounts`
WHERE length(fullname)=(SELECT MAX (length(fullname))FROM `accounts`);

-- Question 5: Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id
-- = 3
SELECT *
FROM `accounts`
WHERE department_id=3 AND
length(fullname)=(SELECT MAX (length(fullname))FROM `accounts`);

-- Question 6: Lấy ra tên group đã tham gia trước ngày 20/12/2019
SLECT * 
FROM `groups`
WHERE create_date < '2019-12-09';

-- Question 7: Lấy ra ID của question có >= 4 câu trả lời
SELECT question_id
FROM   answers 
GROUP BY question_id
HAVING COUNT (question_id) >= 4 ;



-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày
-- 20/12/2019
SELECT `code`
FROM exams 
WHERE duration >= `60`
AND createdate < '2019-12-20';

-- Question 9: Lấy ra 5 group được tạo gần đây nhất

SELECT *
FROM `group_accounts`
WHERE join_date DESC
LIMIT 5;


-- Question 10: Đếm số nhân viên thuộc department có id = 2
 
 SELECT COUNT (department_id) số_nhân_viên
 FROM `accounts`
 WHERE department_id= `2`;
 
 
 
 
 
-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"
SELECT fullname
FROM `accounts`
WHERE fullname LIKE 'D%o';

-- Question 12: Xóa tất cả các exam được tạo trước ngày 20/12/2019

DELETE eq
      FROM exam_questions eq
      INNER JOIN exams e 
		ON eq.exam_id = e.exam_id
 WHERE e.createdate < '20191220';
 
 DELETE FROM exams
WHERE createdate < '20191220';
 
-- Question 13: Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"
SELECT *FROM exam_questions a
INNER JOIN questions e
ON a.question_id=e.question_id
WHERE e.content LIKE "câu hỏi%";

DELETE a
FROM exam_questions a
INNER JOIN questions e
ON a.question_id=e.question_id
WHERE e.content LIKE "câu hỏi%";


SELECT *
FROM answers a
INNER JOIN questions e
ON a.question_id=e.question_id
WHERE e.content LIKE "câu hỏi%";

DELETE a FROM answers a
INNER JOIN questions e
ON a.question_id=e.question_id
WHERE e.content LIKE "câu hỏi%";

SELECT *
FROM questions
WHERE content LIKE "câu hỏi%";

DELETE FROM questions
WHERE content LIKE "câu hỏi%";
-- Question 14: Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và
-- email thành loc.nguyenba@vti.com.vn
SELECT email
FROM `accounts`
WHERE department_id=5
 GROUP BY email;
UPDATE `accounts` SET fullname='Nguyễn Bá Lộc',email='loc.nguyenba@vti.com.vn' WHERE department_id='5';


-- Question 15: update account có id = 5 sẽ thuộc group có id = 4
UPDATE group_accounts SET group_id=4 WHERE account_id=4;
