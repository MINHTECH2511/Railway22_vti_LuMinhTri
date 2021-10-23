-- Exercise 1: Tiếp tục với Database Testing System
-- Question 1: Thêm ít nhất 10 record vào mỗi table
-- Question 2: lấy ra tất cả các phòng ban
SELECT *
FROM departments;
-- Question 3: lấy ra id của phòng ban "Sale"
SELECT department_id,department_name
FROM departments
WHERE department_name="Sale"; 

-- Question 4: lấy ra thông tin account có full name dài nhất

SELECT MAX(length(Full_name))
FROM Accounts
WHERE length(Full_name)=(
                            SELECT MAX(length(Full_name))
                            FROM Accounts
                                                        );
-- CACH LAM KHAC
 -- SELECT (length(Full_name))
-- FROM Accounts
-- ORDER BY length(Full_name)
-- LIMIT 1;

-- SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
-- Question 5: Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id
-- =3
SELECT *, MAX(length(Full_name)) AS 'đỘ dài'
FROM Accounts
WHERE length(Full_name)=(
                            SELECT MAX(length(Full_name))
                            FROM Accounts )AND department_id=3;

-- Question 6: Lấy ra tên group đã tham gia trước ngày 20/12/2019
-- Question 7: Lấy ra ID của question có >= 4 câu trả lời
-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày
-- 20/12/2019
-- Question 9: Lấy ra 5 group được tạo gần đây nhất
-- Question 10: Đếm số nhân viên thuộc department có id = 2
SELECT *, COUNT(department_id) SO_NHAN_VIEN
FROM Accounts
WHERE department_id=2;
-- Question 11: 
Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o" 
SELECT Full_name
FROM Accounts
WHERE Full_name LIKE "D%o";


Question 12: Xóa tất cả các exam được tạo trước ngày 20/12/2019
-- Question 13: Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"
--  Question 14: Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn

 UPDATE Accounts
 SET Full_name="Nguyễn Bá Lộc", Email="loc.nguyenba@vti.com.vn"
 WHERE Account_id=5;
 
 SELECT *
 FROM Accounts


-- Question 15: update account có id = 5 sẽ thuộc group có id = 4

UPDATE Group_Accounts
SET Group_id=4
WHERE Account_id=5;
 
 select *
 from Group_Accounts
 where Account_id=5;