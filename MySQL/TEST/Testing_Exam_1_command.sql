USE Testing_Exam_1_VN;


-- 2. Viết lệnh lấy ra thông tin của khách hàng: tên, số lượng oto khách hàng đã
-- mua và sắp sếp tăng dần theo số lượng oto đã mua.


SELECT c.`name`, SUM( d.amount) AS sl_oto_khach_da_mua
FROM customer AS c
JOIN `order` AS d
ON c.customer_id=d.customer_id
WHERE `status`="1"
GROUP BY d.customer_id 
ORDER BY SUM( d.amount) ASC ;


-- 3. Viết hàm (không có parameter) trả về tên hãng sản xuất đã bán được nhiều
-- oto nhất trong năm nay.

DROP PROCEDURE IF EXISTS top_sale_on_year;
DELIMITER $$
CREATE PROCEDURE top_sale_on_year()
	BEGIN	
		SELECT cc.car_id,cc.maker,d.amount
		FROM car AS cc
		JOIN `order` AS d
            ON cc.car_id=d.car_id
        WHERE d.`status` = "1" AND YEAR(delivery_date)= YEAR(now())
      
      -- đến dây không biêt cach lam 
	END$$

 CALL top_sale_on_year;

-- CÂU 4 CÂU 5 KHÔNG BIẾT CÁCH LÀM
