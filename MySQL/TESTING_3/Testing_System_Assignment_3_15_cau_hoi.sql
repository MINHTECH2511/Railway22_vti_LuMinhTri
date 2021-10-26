SHOW DATABASES;
USE Testing_System;

-- Question 3: lấy ra id của phòng ban "Sale"

SELECT department_id 
FROM departments
WHERE  department_name = 'sale';

-- Question 4: lấy ra thông tin account có full name dài nhất



SELECT *
FROM `accounts`
WHERE length(fullname)= (
SELECT MAX(length(fullname))
FROM `accounts`);



-- Question 5: Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id =3

-- SELECT *
-- FROM `accounts`
-- WHERE department_id =3
-- ORDER BY length(fullname) DESC
-- LIMIT 1;

SELECT *
FROM accounts
WHERE department_id=3 AND 
length(fullname) = (
	SELECT MAX(length(fullname))
    FROM accounts
    );



-- Question 6: Lấy ra tên group đã tham gia trước ngày 20/12/2019

SELECT *
FROM `groups`
WHERE create_date < '2019-12-20';

-- Question 7: Lấy ra ID của question có >= 4 câu trả lời


SELECT question_id
FROM answers
GROUP BY question_id
HAVING COUNT(question_id)>=4;




-- Question 7': lấy ra ID của question có ngày tạo trước ngày 2019-12-12 và có >=3 câu trả lời


SELECT q.question_id
FROM answers q
INNER JOIN questions s
	ON q.question_id=s.question_id
WHERE s.create_date <= '2019-12-12'
GROUP BY q.question_id
HAVING	COUNT(q.question_id)>=3;



-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019

SELECT `code`
FROM exams
WHERE duration>='60'
AND createdate<'2019-12-20';



-- Question 9: Lấy ra 5 group được join gần đây nhất


SELECT *
FROM `group_accounts`
ORDER BY join_date DESC
LIMIT 5;


-- Question 9: Lấy ra 5 group được tạo gần đây nhất
SELECT *
FROM `groups`
ORDER BY create_date DESC
LIMIT 5;


-- Question 10: Đếm số nhân viên thuộc department có id = 2

SELECT count(department_id)số_nv
FROM `accounts`
where department_id='2';


-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"

SELECT	fullname
FROM `accounts`
WHERE fullname LIKE 'D%o';


-- Question 12: Xóa tất cả các exam được tạo trước ngày 20/12/2019



DELETE eq
      FROM exam_questions eq
      INNER JOIN exams e 
		ON eq.exam_id = e.exam_id
 WHERE e.createdate < '2019-12-20';
 
 DELETE FROM exams
WHERE createdate < '2019-12-20';




-- Question 13: Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"



SELECT *FROM exam_questions 
INNER JOIN questions e
ON a.question_id=e.question_id
WHERE e.content LIKE "câu hỏi%";
;

SELECT *
FROM questions
WHERE content LIKE "câu hỏi%";

DELETE FROM questions
WHERE content LIKE "câu hỏi%";





-- Question 14: Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và -- email thành loc.nguyenba@vti.com.vn

SELECT email
 FROM `accounts`
WHERE department_id=5
GROUP BY email;
UPDATE `accounts` SET fullname='Nguyễn Bá Lộc',email='loc.nguyenba@vti.com.vn' WHERE department_id='5';


-- Question 15: update account có id = 5 sẽ thuộc group có id = 4
UPDATE group_accounts SET group_id=4 WHERE account_id=4;
