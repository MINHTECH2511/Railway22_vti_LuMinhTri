-- Add data Department
INSERT INTO departments(department_name)
VALUES
						(N'Marketing'	),
						(N'Sale'		),
						(N'Bảo vệ'		),
						(N'Nhân sự'		),
						(N'Kỹ thuật'	),
						(N'Tài chính'	),
						(N'Phó giám đốc'),
						(N'Giám đốc'	),
						(N'Thư kí'		),
						(N'Bán hàng'	);

-- Add data position
INSERT INTO positions(position_name) 
VALUES 					('Dev'			),
						('Test'			),
						('Scrum Master'	),
						('PM'			); 

INSERT INTO `accounts`(email							, username			, fullname				, department_id	, position_id, create_date)
VALUES 				('haidang29productions@gmail.com'	, 'dangblack'		,'Nguyễn hải Đăng'		,   '5'			,   '1'		,'2020-03-05'),
					('account1@gmail.com'				, 'quanganh'		,'Nguyen Chien Thang2'	,   '1'			,   '2'		,'2020-03-05'),
                    ('account2@gmail.com'				, 'vanchien'		,'Nguyen Van Chien'		,   '2'			,   '3'		,'2020-03-07'),
                    ('account3@gmail.com'				, 'cocoduongqua'	,'Duong Do'				,   '3'			,   '4'		,'2020-03-08'),
                    ('account4@gmail.com'				, 'doccocaubai'		,'Nguyen Chien Thang1'	,   '4'			,   '4'		,'2020-03-10'),
                    ('dapphatchetngay@gmail.com'		, 'khabanh'			,'Ngo Ba Kha'			,   '6'			,   '3'		,'2020-04-05'),
                    ('songcodaoly@gmail.com'			, 'huanhoahong'		,'Bui Xuan Huan'		,   '7'			,   '2'		, NULL		),
                    ('sontungmtp@gmail.com'				, 'tungnui'			,'Nguyen Thanh Tung'	,   '8'			,   '1'		,'2020-04-07'),
                    ('duongghuu@gmail.com'				, 'duongghuu'		,'Duong Van Huu'		,   '9'			,   '2'		,'2020-04-07'),
                    ('vtiaccademy@gmail.com'			, 'vtiaccademy'		,'Vi Ti Ai'				,   '10'		,   '1'		,'2020-04-09');
	
INSERT INTO `groups` (group_name , creator_id ,  create_date)
VALUES              ('a_group'                , '1'             , '2020-04-05'     ),
                    ('b_group'                , '9'            , '2020-04-06'     ),
                    ('c_group'                , '2'             , '2020-07-05'     ),
                    ('d_group'                , '3'             , '2020-04-12'     ),
                    ('e_group'                , '4'             , '2020-04-12'     ),
                    ('f_group'                , '6'             , '2020-04-12'     ),
                    ('g_group'                , '7'             , '2020-04-12'     ),
                    ('h_group'                , '5'             , '2020-04-12'     ),
                    ('j_group'                , '2'             , '2020-04-12'     ),
                    ('k_group'                , '8'             , '2020-04-12'     );
                    
INSERT INTO group_accounts(group_id       , account_id      , join_date        )
VALUES                    ('1'           , '1'             , '2020-06-05'     ),
						  ('2'           , '9'             , '2020-08-05'     ),
                          ('3'           , '2'             , '2020-02-05'     ),
                          ('4'           , '1'             , '2020-09-05'     ),
                          ('1'           , '5'             , '2020-06-07'     ),
                          ('7'           , '1'             , '2020-06-12'     ),
                          ('4'           , '2'             , '2020-08-06'     ),
                          ('8'           , '3'             , '2020-07-24'     ),
                          ('5'           , '5'             , '2020-06-15'     ),
                          ('2'           , '8'             , '2020-06-25'     );

INSERT INTO type_questions (type_name)
VALUES                     ('essay'),
						   ('essay'),
                           ('multiple_choice'),
					       ('essay'),
                           ('multiple_choice'),
                           ('essay'),
                           ('multiple_choice'),
                           ('essay'),
                           ('essay'),
                           ('multiple_choice');
                           
INSERT INTO category_questions (category_name)
VALUES                         ('duy'),
                               ('dung'),
                               ('duong'),
                               ('hoang'),
                               ('duong'),
                               ('luong'),
                               ('banh'),
                               ('huan'),
                               ('tu'),
                               ('khanh');
                               
INSERT INTO questions (content	   , category_id    , type_id    , creator_id 	 , create_date    )
VALUES                  ( 'abc'      ,  '2'           , '1'        , '2'          , '2020-12-05'),
                        ( 'abcd'    ,  '1'           , '2'        , '9'          , '2020-01-05'),
                        ( 'abcf'   ,  '3'           , '3'        , '7'          , '2020-03-05'),
                        ( 'abcw'   ,  '3'           , '4'        , '6'          , '2020-03-02'),
                        ( 'abcg'   ,  '7'           , '6'        , '5'          , '2020-07-03'),
                        ( 'abca'   ,  '6'           , '5'        , '4'          , '2020-08-06'),
                        ( 'abcm'   ,  '8'           , '7'        , '3'          , '2020-06-12'),
                        ( 'abcj'   ,  '4'           , '9'        , '2'          , '2020-09-15'),
                        ( 'abcl'   ,  '5'           , '8'        , '10'          , '2020-06-25'),
                        ( 'abcs'   ,  '9'           , '10'       , '9'          , '2020-05-15');
                        
INSERT INTO answers ( content      , question_id     , iscorrect   )
VALUES              ('asc'         ,  1              , 1           ),
                    ('ascs'         ,  3              , 1           ),
                    ('ascv'         ,  4              , 0           ),
                    ('ascw'         ,  1              , 1           ),
                    ('ascss'         , 8             , 0           ),
                    ('ascvbc'         , 9              , 1           ),
                    ('ascha'         ,  10              , 1           ),
                    ('ascwq'         ,  5             , 1           ),
                    ('ascasd'         ,  7              , 0           ),
                    ('ascnvb'         ,  6              , 1           );
                    
INSERT INTO exams ( `code`     ,  title     , category_id    , duration     , creator_id      ,  createdate )
VALUES            ('dwdasd'    , 'qdwqqd'   ,   1            ,  1           ,  1              ,  '2021-05-15'),
                  ('dwdasds'    , 'qdwqsqd'   ,   3            ,  2           ,  2            ,  '2021-03-15'),
                  ('dwdaswq'    , 'qdwqcvqd'   ,   2            ,  5           ,  3              ,  '2021-02-05'),
                  ('dwdasvcx'    , 'qdwqwqqd'   ,   5            ,  4           ,  4              ,  '2021-06-25'),
                  ('dwdasbxc'    , 'qdwzxqqd'   ,   4            ,  3           ,  7              ,  '2021-02-12'),
                  ('dwdasdg'    , 'qdwqvqd'   ,   6            ,  8           ,  5              ,  '2021-05-16'),
                  ('dwdashgj'    , 'qdwvqqd'   ,   7            ,  6           ,  6              ,  '2021-09-02'),
                  ('dwdasbnk'    , 'qdwaeqqd'   ,   9            ,  7           ,  8              ,  '2021-05-03'),
                  ('dwdasrtyu'    , 'qdwbqqd'   ,   8            ,  10           ,  9              ,  '2021-05-01'),
                  ('dwdasdf'    , 'qdwqfsqd'   ,   10            ,  9          ,  10              ,  '2021-05-09');
                  
INSERT INTO exam_questions ( exam_id    , question_id )
VALUES                     (  1         ,  1          ),
                           (  1         ,  2          ),
                           (  1         ,  3          ),
                           (  4         ,  1          ),
                           (  5         ,  7          ),
                           (  7         ,  1          ),
                           (  8         ,  1          ),
                           (  10         ,  1          ),
                           (  4        ,  2          ),
                           (  1         ,   5         );
                    