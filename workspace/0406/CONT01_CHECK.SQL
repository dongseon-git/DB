-- 비밀번호 길이를 3자이상 입력하도록 테이블에서 설정
CREATE TABLE table_check (
    login_id VARCHAR2(20) CONSTRAINT tblch_loginid_pk PRIMARY KEY,
    logid_pwd VARCHAR2(20) CONSTRAINT tblch_logidpwd_ck CHECK (LENGTH(logid_pwd)>3),
    tel VARCHAR2(20)
);
--Table TABLE_CHECK이(가) 생성되었습니다.

-- 테이블 생성확인
COL owner FOR A10
COL constraint_name FOR A20
COL constraint_type FOR A15
COL table_name FOR A14
SELECT 
    t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name
FROM user_constraints t1
WHERE t1.table_name ='TABLE_CHECK'
;
--OWNER      CONSTRAINT_NAME      CONSTRAINT_TYPE TABLE_NAME    
------------ -------------------- --------------- --------------
--SCOTT      TBLCH_LOGIDPWD_CK    C               TABLE_CHECK   
--SCOTT      TBLCH_LOGINID_PK     P               TABLE_CHECK 

-- CHECK 확인 데이터 입력
INSERT INTO table_check (login_id,logid_pwd,tel
) VALUES ('TEST_ID','123','010-1234-5678');
--오류 보고 - LOGID_PWD > 3,  3자리 초과된 숫자 기입
--ORA-02290: 체크 제약조건(SCOTT.TBLCH_LOGIDPWD_CK)이 위배되었습니다

INSERT INTO table_check (login_id,logid_pwd,tel
) VALUES ('TEST_ID','1234','010-1234-5678');
--1 행 이(가) 삽입되었습니다.