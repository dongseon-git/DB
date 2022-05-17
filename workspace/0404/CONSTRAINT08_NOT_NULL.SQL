-- CONSTRAINT_NAME 이름지정하기

-- 1. 테이블 생성
CREATE TABLE table_notnull2(
    LOGIN_ID  VARCHAR2(20 BYTE) CONSTRAINT TBL_NM2_LOGIN_ID_NN not null,
    LOGIN_PWD VARCHAR2(20)      CONSTRAINT TBL_NM2_LOGIN_PWD_NN not null,
    tel       VARCHAR2(20)
);
--Table TABLE_NOTNULL2이(가) 생성되었습니다.

-- 5. NOT NULL제약 조건 조회
-- USER_CONSTRAINTS
COL owner FOR A7
COL constraint_name FOR A20
COL constraint_type FOR A17
COL table_name FOR A17
SELECT
    t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_NOTNULL2'
;
--OWNER   CONSTRAINT_NAME       CONSTRAINT_TYPE   TABLE_NAME       
--------- -----------------     ----------------- -----------------
--SCOTT   TBL_NM2_LOGIN_ID_NN   C                 TABLE_NOTNULL2                                                      
--SCOTT   TBL_NM2_LOGIN_PWD_NN  C                 TABLE_NOTNULL2   
                                                          
