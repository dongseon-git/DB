-- 중복되지 않는 값 UNIQUE
-- 열에 저장할 데이터의 중복을 허용하지 않고자 할 때 사용합니다.
-- (단, 지정한 열에 NULL값은 여러개 존재 가능)

-- 데이터 삽입
INSERT INTO table_unique VALUES ('TEST_ID_01','PWD01','010-1234-5678');
--1 행 이(가) 삽입되었습니다.

-- 데이터 삽입 후 확인
SELECT * FROM table_unique;
--LOGIN_ID             LOGIN_PWD            TEL                 
---------------------- -------------------- --------------------
--TEST_ID_01           PWD01                010-1234-5678 

-- 데이터 중복 삽입
INSERT INTO table_unique VALUES ('TEST_ID_01','PWD02','010-1234-5678');
--오류 보고 - : TEST_ID_01 데이터(UNIQUE) 중복으로 인해 오류
--ORA-00001: 무결성 제약 조건(SCOTT.SYS_C008369)에 위배됩니다

-- LOGIN_ID(UNIQUE) 중복되지 않게 데이터 삽입
INSERT INTO table_unique VALUES ('TEST_ID_02','PWD02','010-1234-5678');
--1 행 이(가) 삽입되었습니다.

-- 데이터 삽입 후 확인
SELECT * FROM table_unique;
--LOGIN_ID             LOGIN_PWD            TEL                 
---------------------- -------------------- --------------------
--TEST_ID_01           PWD01                010-1234-5678       
--TEST_ID_02           PWD02                010-1234-5678

-- LOGIN_ID에 NULL 데이터로 삽입
INSERT INTO table_unique VALUES (NULL,'PWD02','010-1234-5678');
--1 행 이(가) 삽입되었습니다. 

-- 데이터 삽입 후 확인 : NULL 데이터 삽입 가능
SELECT * FROM table_unique;
--LOGIN_ID             LOGIN_PWD            TEL                 
---------------------- -------------------- --------------------
--TEST_ID_01           PWD01                010-1234-5678       
--TEST_ID_02           PWD02                010-1234-5678       
--                     PWD02                010-1234-5678 

-- LOGIN_ID NULL -> TEST_ID_01 변경
UPDATE table_unique
   SET LOGIN_ID = 'TEST_ID_01'
WHERE LOGIN_ID IS NULL;
--오류 보고 - : TEST_ID_01이 존재 하므로 변경 불가
--ORA-00001: 무결성 제약 조건(SCOTT.SYS_C008369)에 위배됩니다
SELECT * FROM table_unique;