-- Chú ý: Tạo 1 File SQL đặt tên là "Testing_System_Assignment_6"
-- Exercise 1: Tiếp tục với Database Testing System
-- Question 1: Tạo store để người dùng nhập vào tên phòng ban và in ra tất cả các
-- account thuộc phòng ban đó
-- Question 2: Tạo store để in ra số lượng account trong mỗi group
 
 DROP PROCEDURE IF EXISTS Groups_1 ;
DELIMITER $$
CREATE PROCEDURE Groups_1(IN IN_group_id TINYINT )
	BEGIN	
        SELECT COUNT(Account_id) 
        FROM  Accounts A
        RIGHT JOIN Group_Accounts G
        ON A.Account_id = G.Account_id
        RIGHT JOIN `Groups` GG
        ON G.Group_id = GG.Group_id
        GROUP BY GG.Group_id
        ORDER BY    GG.Group_id
   END $$
DELIMITER ;







-- Question 3: Tạo store để thống kê mỗi type question có bao nhiêu question được tạo
-- trong tháng hiện tại


-- Question 4: Tạo store để trả ra id của type question có nhiều câu hỏi nhất
               DROP PROCEDURE IF EXISTS question_1 ;
DELIMITER $$
CREATE PROCEDURE question_1(OUT IN_question TINYINT )
	BEGIN	
        SELECT Type_id INTO  IN_question
        FROM Type_Questions
        GROUP BY 
        ORDER BY    
   END$$
DELIMITER ;
-- Question 5: Sử dụng store ở question 4 để tìm ra tên của type question


-- Question 6: Viết 1 store cho phép người dùng nhập vào 1 chuỗi và trả về group có tên
-- chứa chuỗi của người dùng nhập vào hoặc trả về user có username chứa
-- chuỗi của người dùng nhập vào
-- Question 7: Viết 1 store cho phép người dùng nhập vào thông tin fullName, email và
-- trong store sẽ tự động gán:

-- username sẽ giống email nhưng bỏ phần @..mail đi
-- positionID: sẽ có default là developer
-- departmentID: sẽ được cho vào 1 phòng chờ

-- Sau đó in ra kết quả tạo thành công
-- Question 8: Viết 1 store cho phép người dùng nhập vào Essay hoặc Multiple-Choice
-- để thống kê câu hỏi essay hoặc multiple-choice nào có content dài nhất
-- Question 9: Viết 1 store cho phép người dùng xóa exam dựa vào ID
-- Question 10: Tìm ra các exam được tạo từ 3 năm trước và xóa các exam đó đi (sử
-- dụng store ở câu 9 để xóa)
-- Sau đó in số lượng record đã remove từ các table liên quan trong khi
-- removing
-- Question 11: Viết store cho phép người dùng xóa phòng ban bằng cách người dùng
-- nhập vào tên phòng ban và các account thuộc phòng ban đó sẽ được
-- chuyển về phòng ban default là phòng ban chờ việc
-- Question 12: Viết store để in ra mỗi tháng có bao nhiêu câu hỏi được tạo trong năm
-- nay