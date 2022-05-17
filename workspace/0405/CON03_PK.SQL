-- 유일하게 하나만 있는 값 PRIMARY KEY
-- PRIMARY KEY : NOT NULL + UNIQUE의 특징을 가지며 테이블 내에서 데이터들 끼리
--               유일성을 보장하는 컬럼에 설정합니다. 그리고 테이블당 1개만 설정
-- 특정 열을 PK로 지정하면 해당 열에는 자동으로 인덱스가 만들어 진다.

-- PRIMARY KEY 제약 조건을 지정한 열 확인(중복 데이터 입력)
--table_pk -  데이터 입력
INSERT INTO table_pk (login_id,login_pwd,tel) 
 VALUES ('TEST_ID_01','PWD01','010-1234-5678');
--1 행 이(가) 삽입되었습니다.

----table_pk -  중복 데이터 입력
INSERT INTO table_pk (login_id,login_pwd,tel) 
 VALUES ('TEST_ID_01','PWD02','010-1235-5678');
-- 오류 보고 -
--ORA-00001: 무결성 제약 조건(SCOTT.SYS_C008427)에 위배됩니다

SELECT login_id, login_pwd, tel FROM table_pk;
--LOGIN_ID             LOGIN_PWD            TEL                 
---------------------- -------------------- --------------------
--TEST_ID_01           PWD01                010-1234-5678 