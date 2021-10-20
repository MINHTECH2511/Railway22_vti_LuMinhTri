


-- EXERCISE1 --

-- Question 1: Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ

SELECT 		a.fullname,
			d.department_name
FROM `accounts` a
LEFT JOIN departments d
	ON d.department_id=a.department_id;


-- Question 2: Viết lệnh để lấy ra thông tin các account được tạo sau ngày 20/12/2010



SELECT *
FROM `accounts`
WHERE create_date >'2010-12-20';


-- Question 3: Viết lệnh để lấy ra tất cả các developer


SELECT a.fullname,p.position_name
FROM `accounts` a
LEFT JOIN positions p
	ON p.position_id=a.position_id
WHERE p.position_name="Dev";


-- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên


SELECT d.*
FROM departments d
RIGHT JOIN accounts a
	ON a.department_id=d.department_id
GROUP BY a.department_id
HAVING COUNT(a.department_id)>=3;



SELECT p.department_name
FROM departments p
LEFT JOIN `accounts` a
	ON p.department_id=a.department_id
GROUP BY p.department_id
HAVING COUNT(p.department_id)>=3;


-- Question 5: Viết lệnh để lấy ra danh sách câu hỏi được sử dụng trong đề thi nhiều
-- nhất


SELECT q.content,
		e.question_id
FROM exam_questions e
LEFT JOIN questions q
	ON q.question_id=e.question_id
GROUP BY e.question_id
ORDER BY COUNT(e.question_id) DESC
LIMIT 1;


SELECT q.content,
		e.question_id,
        COUNT(e.question_id)
FROM exam_questions e
LEFT JOIN questions q
	ON q.question_id=e.question_id
GROUP BY e.question_id
HAVING COUNT(e.question_id)=(
							SELECT	COUNT(e.question_id)
                            FROM exam_questions e
							INNER JOIN questions q
								ON e.question_id=q.question_id
							GROUP BY q.question_id
                            ORDER BY COUNT(q.question_id) DESC
                            LIMIT 1
                            );
        
        

-- Question 6: Thông kê mỗi category Question được sử dụng trong bao nhiêu Question

SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));


SELECT q.content,
		COUNT(q.category_id)so_lan_sd
FROM questions q
RIGHT JOIN category_questions c
	ON q.category_id=c.category_id
GROUP BY q.category_id;



-- Question 7: Thông kê mỗi Question được sử dụng trong bao nhiêu Exam

SELECT  q.question_id,
        q.content,
        COUNT(e.question_id)sl_exam
FROM exam_questions e
RIGHT JOIN questions q
	ON e.question_id=q.question_id
GROUP BY e.question_id;



-- Question 8: Lấy ra Question có nhiều câu trả lời nhất

SELECT q.question_id,
		q.content,
        COUNT(a.question_id)so_cau_tl
FROM questions q
RIGHT JOIN answers a
	ON q.question_id=a.question_id
GROUP BY a.question_id
HAVING COUNT(a.question_id)= (
							SELECT COUNT(question_id)
                            FROM answers
                            GROUP BY question_id
                            ORDER BY COUNT(question_id) DESC
                            LIMIT 1
                            );

-- Question 9: Thống kê số lượng account trong mỗi group


SELECT COUNT(a.account_id),
		gr.group_id,
		g.group_name
FROM group_accounts gr
RIGHT JOIN accounts a
	ON a.account_id= gr.account_id
RIGHT JOIN `groups`g
	ON g.group_id=gr.group_id
GROUP BY g.group_id;





SELECT gr.*,COUNT(ga.account_id) number_1
FROM `groups` gr
LEFT JOIN group_accounts ga
	ON gr.group_id=ga.group_id
GROUP BY gr.group_id
ORDER BY COUNT(ga.account_id);



SELECT gr.group_name,
        COUNT(g.group_id)SL_account
FROM group_accounts g
RIGHT JOIN accounts a
	ON a.account_id=g.account_id
RIGHT JOIN `groups` gr
	ON g.group_id=gr.group_id
GROUP BY g.group_id;





-- Question 10: Tìm chức vụ có ít người nhất


SELECT q.*,
		COUNT(q.position_id)
FROM accounts a
RIGHT JOIN positions q
	ON a.position_id=q.position_id
GROUP BY a.position_id
HAVING COUNT(q.position_id) =(
								SELECT COUNT(position_id)
                                FROM accounts
                                GROUP BY position_id
                                ORDER BY COUNT(position_id)
                                LIMIT 1
                                );


-- Question 11: Thống kê mỗi phòng ban có bao nhiêu dev, test, scrum master, PM

SELECT 	p.position_name,
		COUNT(a.department_id)so_phong_ban
FROM accounts a
LEFT JOIN  positions p
	ON a.position_id=p.position_id
WHERE p.position_name IN ("Dev","Test","Scrum Master", "PM")
GROUP BY p.position_id
ORDER BY COUNT(a.department_id);


SELECT d.department_name,
		COUNT(a.department_id)SL_PHONG_BAN,
        GROUP_CONCAT(p.position_name)
FROM accounts a
INNER JOIN departments d
	ON a.department_id=d.department_id
INNER JOIN positions p
	ON a.position_id=p.position_id
GROUP BY a.department_id;










CREATE VIEW cross_dept_posi AS
	SELECT 
        d.department_id, p.position_id
    FROM
        departments d
    CROSS JOIN `positions` p
    WHERE
        p.position_name IN ("Dev","Test","Scrum Master", "PM")
    ORDER BY d.department_id , p.position_id;
    
SELECT * FROM cross_dept_posi;

CREATE VIEW T2 AS
	SELECT 
        d.department_id,
		p.position_id,
		COUNT(a.account_id) AS number_of_account
    FROM
        positions p
    LEFT JOIN `accounts` a ON p.position_id = a.position_id
    RIGHT JOIN departments d ON a.department_id = d.department_id
    WHERE
        p.position_name IN ("Dev","Test","Scrum Master", "PM")
    GROUP BY d.department_id , p.position_id;
    
SELECT * FROM T2;

SELECT 
    t1.department_id,
    t1.position_id,
    IF((t2.number_of_account IS NULL),0,t2.number_of_account) AS number_of_account
FROM
    (SELECT * FROM cross_dept_posi) AS t1
        LEFT JOIN
    (SELECT * FROM T2) AS t2 ON t1.department_id = t2.department_id
        AND t1.position_id = t2.position_id
GROUP BY t1.department_id , t1.position_id
ORDER BY t1.department_id , t1.position_id;











 
					 
   
-- Question 12: Lấy thông tin chi tiết của câu hỏi bao gồm: thông tin cơ bản của
-- question, loại câu hỏi, ai là người tạo ra câu hỏi, câu trả lời là gì, ...




-- Question 13: Lấy ra số lượng câu hỏi của mỗi loại tự luận hay trắc nghiệm

SELECT t.type_name,
		COUNT(q.content)so_cau
FROM questions q
LEFT JOIN type_questions t
	ON q.type_id=t.type_id
GROUP BY q.type_id
ORDER BY COUNT(q.content);


-- Question 14:Lấy ra group không có account nào



SELECT g.group_name,					
		g.group_id
FROM `groups` g
LEFT JOIN `group_accounts` a
ON a.group_id=g.group_id
WHERE a.account_id IS NULL;



-- Question 15: Lấy ra group không có account nào -- ủa khác chi câu 14 ????

-- Question 16: Lấy ra question không có answer nào

SELECT q.question_id,
		q.content
FROM answers a
RIGHT JOIN questions q
	ON a.question_id = q.question_id
WHERE a.answer_id IS NULL;




-- EXERCISE2 -- 

-- Question 17:
-- a) Lấy các account thuộc nhóm thứ 1

SELECT a.fullname
FROM accounts a
INNER JOIN group_accounts g
ON a.account_id=g.account_id
WHERE g.account_id=1;


-- b) Lấy các account thuộc nhóm thứ 2
SELECT a.fullname
FROM accounts a
INNER JOIN group_accounts g
ON a.account_id=g.account_id
WHERE g.account_id=2;


-- c) Ghép 2 kết quả từ câu a) và câu b) sao cho không có record nào trùng nhau-- UINON

SELECT a.fullname
FROM accounts a
INNER JOIN group_accounts g
	ON a.account_id=g.account_id
WHERE g.account_id=1
UNION
SELECT a.fullname
FROM accounts a
INNER JOIN group_accounts g
	ON a.account_id=g.account_id
WHERE g.account_id=2;


-- Question 18:
-- a) Lấy các group có lớn hơn 5 thành viên

SELECT COUNT(g.account_id)
FROM accounts a
INNER JOIN group_accounts g
	ON a.account_id=g.account_id
GROUP BY g.account_id
HAVING COUNT(g.account_id)>=5;
-- b) Lấy các group có nhỏ hơn 7 thành viên


SELECT COUNT(g.account_id)
FROM accounts a
INNER JOIN group_accounts g
	ON a.account_id=g.account_id
GROUP BY g.account_id
HAVING COUNT(g.account_id)<=7;
-- c) Ghép 2 kết quả từ câu a) và câu b)

SELECT COUNT(g.account_id)
FROM accounts a
INNER JOIN group_accounts g
	ON a.account_id=g.account_id
GROUP BY g.account_id
HAVING COUNT(g.account_id)>=5
UNION ALL
SELECT COUNT(g.account_id)
FROM accounts a
INNER JOIN group_accounts g
	ON a.account_id=g.account_id
GROUP BY g.account_id
HAVING COUNT(g.account_id)<=7;











