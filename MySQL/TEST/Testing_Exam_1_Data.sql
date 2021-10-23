USE Testing_Exam_1_VN;
INSERT INTO customer(   `name`        , 	phone      ,     email                       , address          ,  note  )  
VALUES				(	 N'la van hong'  , '0943449921'   , '66daihiepkiemkhach331@gmail.com'   ,  'agoda'         ,'agoda1'), 
					(	 N'chu binh ten' , '0943449922'  , '55daihiepkiemkhach332@gmail.com'   ,  'neveda'        ,'agoda2'),
                    (N'nan gina co'  , '0943449923'  , '1daihiepkiemkhach333@gmail.com'   ,  'cali'          ,'agoda3'),
                    ( N'daviid teo'   , '0943449924'  , '2daihiepkiemkhach133@gmail.com'  ,  'newyork'       ,'agoda4'),
                    (	N'lee min ho'   , '0943449925'  , 'daihiepkiemkhach13@gmail.com'   ,  'vietnam'       ,'agoda5');
     
INSERT INTO      car(maker    , 	model   ,  `year`  ,   color     ,note  )
VALUES				('toyota'  , 'tmoder3'   , '2021-10-10'  ,  'pink'  ,  'used' ), 
					('honda'   , 'waversx1'  ,'2021-10-10'  ,  'black'  , 'new'  ),
                    (	'nissan'  , 'visoi s '  , '2021-10-10'  ,  'pink'    ,'used' ),
                    (	'honda'   , 'waversx3'  , '2021-10-10'  ,  'gray' , 'new' ),
                    (	 'honda'   , 'waversx2'  , '2021-10-10'   ,  'red'   ,'new');

 
INSERT INTO `order`(  customer_id       ,car_id	        ,amount       , sale_price         ,  order_date      ,   delivery_date  ,  delivery_address  ,    `status`,note)                   
VALUES				(	1               ,1               ,1        , '20210000'    , '2021-10-10'       ,'2022-10-10' ,            'agoda'  ,              "1"  ,    'agoda'  ),
					(	2               ,2              , 2         , '20260000'    , '2021-10-10'     , '2022-10-10',             'agoda'  ,            "1"   ,'agoda'),
                    (	3               ,3              , 3       , '20210000'   , '2021-10-10'     ,'2022-10-10' ,             'agoda'   ,             "1"      ,'agoda' ),
                    (	4               ,4               ,4         , '20220000' , '2021-10-10'     ,'2022-10-10',              'agoda'   ,                 "1"    ,'agoda'),
                    (	5               ,5               , 5        , '20210000'  , '2021-10-10'     ,'2022-10-10',              'agoda'   ,              "2" ,'agoda');     