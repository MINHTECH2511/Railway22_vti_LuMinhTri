-- Question 1: Thêm ít nhất 10 record vào mỗi table
-- Add data department
INSERT INTO departments(department_id, department_name)
VALUES					( 	1		,  N'Marketing'),
						(	2		,  N'Sale'),
                        (	3		,  N'Kỹ Thuật'),
                        (	4		,  N'Nhân Sự'),
                        (	5		,  N'Giám Đốc');


-- add data Positions
INSERT INTO Positions (Position_id, Position_name)
VALUES					(	1		,	N'DEV'	),
						(	2		,	N'TEST'	),
                        (	3		,	N'Scrum Master'),
                        (	4		,	N'PM'	);


-- add data Accounts
INSERT INTO Accounts (Account_id , gender ,			 Email , 				Use_name , 		Full_name , 		department_id , Position_id , 	Create_Date)
VALUES					(	1		,	1	,	N'minhtech0912@gmail.com'	,	'KN_1'		,	N'Lữ Minh Trí'	,	5		,		3		,	'2021-10-10'),
						(	2		,	1	,	N'Dangvanhai1990@gamil.com'	,	'DTV_1'		,	N'Đặng Văn Hải'	,	4		,		2		,	'2021-10-10'),
                        (	3		,	0	,	N'Nguyenvantroi1989@mail.com'	,	'HTT_1'		,	N'Nguyễn Văn Trỗi'	,	3		,		2		,	'2021-10-10'),
                        (	4		,	0 	,	N'daihiepkiemkhach1@gmail.com'	,	'Hien_1'	,	N'Dương Quá'	,	2		,		3		,	'2021-10-10'),
                        (	5		,	1	,	N'Tethiendaithanh@mgail.com',	'DAT09'		,	N'Tôn Ngộ Không'	,	1		,		1		,	'2021-10-10'),
                        (	6		,	1	,	N'minhtech0913@gmail.com'	,	'KN_10'		,	N'Lữ Minh Tí'	,	5		,		3		,	'2021-10-10'),
						(	7		,	1	,	N'Dangvanha0@gamil.com'	,	'DTV_100'		,	N'Đặng Văn Hả'	,	4		,		2		,	'2021-10-10'),
                        (	8		,	0	,	N'Nguyenvantro1989@mail.com'	,	'HTT1_1'		,	N'Nguyễn Văn Trỗ'	,	3		,		2		,	'2021-10-10'),
                        (	9		,	0 	,	N'daihiepkiemkhach123@gmail.com'	,	'Hieno_1'	,	N'Dương Quáng'	,	2		,		3		,	'2021-10-10'),
                        (	10		,	1	,	N'Tethiendaithanhtrubatgioi@mgail.com',	'DAT090909'		,	N'Tôn Ngộ Không Lông'	,	1		,		1		,	'2021-10-10'),
						(	11		,	1	,	N'minhtech0912987@gmail.com'	,	'KND_1'		,	N'Lữ Minh Rí'	,	5		,		3		,	'2021-10-10'),
						(	12		,	1	,	N'Dangvanhai1990112@gamil.com'	,	'DTDDV_1'		,	N'Đặng Văn Ti'	,	4		,		2		,	'2021-10-10'),
                        (	13		,	0	,	N'Nguyenvantroi19811119@mail.com'	,	'HTTDE_1'		,	N'Nguyễn Văn Hỗi'	,	3		,		2		,	'2021-10-10'),
                        (	14		,	0 	,	N'daihiepkiemkhach2221@gmail.com'	,	'HDDien_1'	,	N'Dương Cá'	,	2		,		3		,	'2021-10-10'),
                        (	15		,	1	,	N'Tethiendaithanh223@mgail.com',	'DADDT09'		,	N'Tôn Ngộ Nhông'	,	1		,		1		,	'2021-10-10'),
                        (	16		,	1	,	N'minhtech0913112@gmail.com'	,	'KNFF_10'		,	N'Lữ Minh Tín'	,	5		,		3		,	'2021-10-10'),
						(	17		,	1	,	N'Dangvanha112q0@gamil.com'	,	'DTVFF_100'		,	N'Đặng Văn Cả'	,	4		,		2		,	'2021-10-10'),
                        (	18		,	0	,	N'Nguyenvantro1989ww@mail.com'	,	'HTFFT1_1'		,	N'Nguyễn Văn Chỗi'	,	3		,		2		,	'2021-10-10'),
                        (	19		,	0 	,	N'daihiepkiemkhach1sss23@gmail.com'	,	'HieFFno_1'	,	N'Dương Quáng Ca'	,	2		,		3		,	'2021-10-10'),
                        (	20		,	1	,	N'Tethiendaithanhtrubatgioizzzxđe@mgail.com',	'DAFFT090909'		,	N'Tôn Ngộ Không Lông Bông'	,	1		,		1		,	'2021-10-10');
-- add data `Groups`
INSERT INTO `Groups`(Group_id , Group_name   , 	Creator_id , Create_Date)
VALUES				(	1		,N'Management'	,1			,'2021-10-10'),
					(	2		,N'Sale_1'		,2			,'2021-10-10'),
                    (	3		,N'Sale_2'		,3		,'2021-10-10'),
                    (	4		,N'Test_1'		,4			,'2021-10-10'),
                    (	5		,N'Test_2'		,5			,'2021-10-10'),
					(	6		,N'Managementa'	,6			,'2021-10-10'),
					(	7		,N'Sale_152'		,7			,'2021-10-10'),
                    (	8		,N'Test_152'		,8		,'2021-10-10'),
                    (	9		,N'Test_252'		,9			,'2021-10-10'),
                    (	10		,N'Management2'	,10			,'2021-10-10'),
                    (	11		,N'Management2'	,11			,'2021-10-10'),
					(	12		,N'Sale_122'		,12			,'2021-10-10'),
                    (	13		,N'Sale_23'		,13			,'2021-10-10'),
                    (	14		,N'Test_14'		,14		,'2021-10-10'),
                    (	15		,N'Test_25'		,15			,'2021-10-10');
-- add data Group_Accounts
INSERT INTO Group_Accounts (Group_id , Account_id , Join_Date)
VALUES					   	(	1		,	1		,'2021-10-10'),
							(	3		,	2		,'2021-10-10'),
                            (	2		,	3		,'2021-10-10'),
                            (	4		,	4		,'2021-10-10'),
                            (	5		,	5		,'2021-10-10'),
                            (	6		,	6		,'2021-10-10'),
							(	7		,	7		,'2021-10-10'),
                            (	8		,	8		,'2021-10-10'),
                            (	9		,	9		,'2021-10-10'),
                            (	10		,	10		,'2021-10-10'),
                            (	11		,	11		,'2021-10-10'),
							(	12		,	12		,'2021-10-10'),
                            (	13		,	13		,'2021-10-10'),
                            (	14		,	14		,'2021-10-10'),
                            (	15		,	15		,'2021-10-10');
                            
-- add data Type_Questions
INSERT INTO Type_Questions (Type_id , Type_name)
VALUES						(	1	,	N'essay'),
							(	2	,	N'mutiple-Choice');
                            
-- add data Category_Questions
INSERT INTO Category_Questions  ( Category_id   , Category_Name)
VALUES							(	1			,		N'SQL_1'),
								(	2			,		N'SQL_2'),
                                (	3			,		N'SQL_3'),
                                (	4			,		N'SQL_4'),
                                (	5			,		N'SQL_5'),
                                (	6			,		N'SQL_6'),
								(	7			,		N'SQL_7'),
                                (	8			,		N'SQL_8'),
                                (	9			,		N'SQL_9'),
                                (	10			,		N'SQL_10'),
                                (	11			,		N'SQL_11'),
								(	12			,		N'SQL_12'),
                                (	13			,		N'SQL_13'),
                                (	14			,		N'SQL_14'),
                                (	15			,		N'SQL_15');

-- add data Questions
INSERT INTO Questions ( Question_id , Content , 												Category_id ,		 Type_id , Creator_id , Creator_Date)
VALUES				 	(		1		,N'VARCHAR la constraints'							,		1	  	,			1	,		1		,'2021-10-10'),
						(		2		,N'ENUM sử dụng chuỗi kí tự biến đổi dạng tring'	,		2		,			1	,		1		,'2021-10-10'),
                        (		3		,N'DECIMAL là datatype nhập số theo mẫu đặt ra'		,		3		,			1	,		1		,'2021-10-10'),
                        (		4		,N'PRIMARY KEY là khoá phụ '						,		4		,			1	,		1		,'2021-10-10'),
                        (		5		,N'PRIMARY KEY là khoá chính của trường'			,		5		,			1	,		1		,'2021-10-10'),
                        (		6		,N'VARCHAR la constraintsss'							,		6	  	,			1	,		1		,'2021-10-10'),
						(		7		,N'ENUM sử dụng chuỗi kí tự biến đổi dạng tringg'	,		7		,			1	,		1		,'2021-10-10'),
                        (		8		,N'DECIMAL là datatype nhập số theo mẫu đặt rang'		,		8		,			1	,		1		,'2021-10-10'),
                        (		9		,N'PRIMARY KEY là khoá phụs '						,		9		,			1	,		1		,'2021-10-10'),
                        (		10		,N'PRIMARY KEY là khoá chính của trườngs'			,		10		,			1	,		1		,'2021-10-10'),
                        (		11		,N'VARCHAR la constraintss'							,		11	  	,			1	,		1		,'2021-10-10'),
						(		12		,N'ENUM sử dụng chuỗi kí tự biến đổi dạng tringss'	,		12		,			1	,		1		,'2021-10-10'),
                        (		13		,N'DECIMAL là datatype nhập số theo mẫu đặt rass'		,		13		,			1	,		1		,'2021-10-10'),
                        (		14		,N'PRIMARY KEY là khoá phụ ss'						,		14		,			1	,		1		,'2021-10-10'),
                        (		15		,N'PRIMARY KEY là khoá chính của trườngss'			,		15		,			1	,		1		,'2021-10-10');



-- add data Answers
INSERT INTO Answers ( Answer_id , Content , 																			Question_id , 	is_Correct )
VALUES				(	1		,N'VARCHAR là datatype sử dụng chuỗi kí tự biến đổi dạng string',							 '1'	,		1),
					(	2		,N'ENUM là datatype dạng string sử dụng để áp đặt nguời dùng sử dụng giá trị cho trước',	 '2'	,		1),
					(	3		,N'DECIMAL là datatype nhập số có phần sau dấu phấy được đặt trước số kí tự',				 '3'	,		1),
                    (	4		,N'PRIMARY KEY là khoá phụ',																 '4'	,		0),
                    (	5		,N'PRIMARY KEY là khoá chính của trường',													 '5'	,		1);

-- add data Exams
INSERT INTO Exams ( Exam_id , 		`Code` 	,	 Title , 			Category_id , 	Duration 	,	 Creator_id ,	 Creator_Date)
VALUES				( 	1	,	N'VTI_001'	,	N'BÀI TẬP_1'	,		1		,		5		,		1		,	'2021-10-10'),
					(	2	,	N'VTI_002'	,	N'BÀI TẬP_2'	,		3		,		5		,		1		,	'2021-10-10'),
                    (	3	,	N'VTI_003'	,	N'BÀI TẬP_3'	,		4		,		5		,		1		,	'2021-10-10'),
					(	4	,	N'VTI_004'	,	N'BÀI TẬP_4'	,		1		,		5		,		1		,	'2021-10-10'),
                    (	5	,	N'VTI_005'	,	N'BÀI TẬP_5'	,		2		,		5		,		1		,	'2021-10-10');
                    
-- add data Exam_Questions
INSERT INTO Exam_Questions ( Exam_id , Question_id)
VALUES						(	1	,	1		),
							(	2	,	1		),
                            (	3 	,	3		),
                            (	4	,	3		),
                            (	5	,	2		);
                            
	INSERT INTO departments( department_name)
    VALUES					( 'Kế toán');