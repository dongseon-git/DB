-- 중복되지 않는 값 UNIQUE
-- 열에 저장할 데이터의 중복을 허용하지 않고자 할 때 사용합니다.
-- (단, 지정한 열에 NULL값은 여러개 존재 가능)

SELECT * FROM TABLE_UNIQUE;
--LOGIN_ID             LOGIN_PWD            TEL                 
---------------------- -------------------- --------------------
--TEST_ID_01           PWD01                010-1234-5678       
--TEST_ID_02           PWD02                010-1234-5678       
--                     PWD02                010-1234-5678

UPDATE TABLE_UNIQUE
   SET TEL = '010-1235-5678'
WHERE LOGIN_ID = 'TEST_ID_01';
--1 행 이(가) 업데이트되었습니다.

UPDATE TABLE_UNIQUE
   SET TEL = '010-1236-5678'
WHERE LOGIN_ID = 'TEST_ID_02';
--1 행 이(가) 업데이트되었습니다.

ALTER TABLE TABLE_UNIQUE
MODIFY (tel UNIQUE);
--Table TABLE_UNIQUE이(가) 변경되었습니다.

SELECT * FROM TABLE_UNIQUE;
--LOGIN_ID             LOGIN_PWD            TEL                 
---------------------- -------------------- --------------------
--TEST_ID_01           PWD01                010-1235-5678       
--TEST_ID_02           PWD02                010-1236-5678       
--                     PWD02                010-1234-5678 

-- UNIQUE 컬럼에 NULL로 UPDATE
UPDATE TABLE_UNIQUE
   SET tel = NULL;
--3개 행 이(가) 업데이트되었습니다.

-- UNIQUE해도 NULL은 다건 입력가능
SELECT * FROM TABLE_UNIQUE;
--LOGIN_ID             LOGIN_PWD            TEL                 
---------------------- -------------------- --------------------
--TEST_ID_01           PWD01                                    
--TEST_ID_02           PWD02                                    
--                     PWD02                                   
