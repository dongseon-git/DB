-- 기본값을 정하는 DEFAULT
--  특정 열에 저장할 값이 지정되지 않았을 경우에 기본값(DEFAULT)을 지정

--비밀번호 DEFAULT 1234 테이블 생성
CREATE TABLE table_default (
    login_id VARCHAR2(20) CONSTRAINT tbldefault_loginid_pk PRIMARY KEY,
    logid_pwd VARCHAR2(20) DEFAULT '1234',
    tel VARCHAR2(20)
);
--Table TABLE_DEFAULT이(가) 생성되었습니다.

-- 테이블 생성확인
COL owner FOR A10
COL constraint_name FOR A25
COL constraint_type FOR A15
COL table_name FOR A14
SELECT 
    t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name
FROM user_constraints t1
WHERE t1.table_name ='TABLE_DEFAULT'
;
-- DEFAULT는 제약조건으로 관리 되지 않음
--OWNER      CONSTRAINT_NAME           CONSTRAINT_TYPE TABLE_NAME    
------------ ------------------------- --------------- --------------
--SCOTT      TBLDEFAULT_LOGINID_PK     P               TABLE_DEFAULT

-- DEFAULT 확인 데이터 입력
INSERT INTO table_default (login_id,tel
) VALUES ('TEST_ID','010-1234-5678');
--1 행 이(가) 삽입되었습니다.

SELECT * FROM table_default;
-- LOGID_PWD는 DEFAULT '1234'를 주었기 때문에 데이터입력을 하지 않으면 '1234'입력
--LOGIN_ID             LOGID_PWD            TEL                 
---------------------- -------------------- --------------------
--TEST_ID              1234                 010-1234-5678 