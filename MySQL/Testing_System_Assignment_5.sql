-- Exercise 1: Tiếp tục với Database Testing System
-- (Sử dụng subquery hoặc CTE)
-- Question 1: Tạo view có chứa danh sách nhân viên thuộc phòng ban sale
DROP VIEW IF EXISTS  VIEW_1;
CREATE VIEW VIEW_1 AS
SELECT *
FROM Accounts A 
JOIN departments D
ON A.department_id=D.department_id
	WHERE D.department_name='Sale';
    


-- Question 2: Tạo view có chứa thông tin các account tham gia vào nhiều group nhất
DROP VIEW IF EXISTS VIEW_2;
CREATE VIEW VIEW_2 AS
SELECT A.Account_id,G.Group_id
FROM Accounts A
JOIN Group_Accounts G
ON A.Account_id=G.Account_id
GROUP BY G.Group_id
ORDER BY COUNT(G.Group_id)DESC
LIMIT 1;



-- Question 3: Tạo view có chứa câu hỏi có những content quá dài (content quá 15 kí tự
-- được coi là quá dài) và xóa nó đi
DROP VIEW IF EXISTS VIEW_3;
CREATE VIEW VIEW_3 AS
SELECT *
FROM Accounts A
JOIN Questions Q
ON A.Account_id=Q.Creator_id
WHERE length(Q.Content)>15

-- Question 4: Tạo view có chứa danh sách các phòng ban có nhiềU nhân viên nhất

DROP VIEW EXISTS VIEW_4;
CREATE VIEW VIEW_4 AS
SELECT *
FROM departments
JOIN departments D
ON A.department_id=D.department_id
GROUP BY A.department_id 
ORDER BY count(A.department_id) DESC
LIMIT 1;



-- Question 5: Tạo view có chứa tất các các câu hỏi do user họ Nguyễn tạo
DROP VIEW EXISTS VIEW_5;
CREATE VIEW VIEW_5 AS
SELECT *
FROM Accounts A
JOIN Questions Q
ON A.Account_id = Q.Creator_id
WHERE Full_name LIKE "Nguyễn%";
