-- 유일하게 하나만 있는 값 PRIMARY KEY
-- PRIMARY KEY : NOT NULL + UNIQUE의 특징을 가지며 테이블 내에서 데이터들 끼리
--               유일성을 보장하는 컬럼에 설정합니다. 그리고 테이블당 1개만 설정
-- 특정 열을 PK로 지정하면 해당 열에는 자동으로 인덱스가 만들어 진다.

--테이블 생성하면서 제약조건 이름 직접 지정하기 : CONSTRAINT
--PK를 생성하면 자동으로 인덱스가 생성된다
CREATE TABLE table_pk2(
 login_id VARCHAR2(20) CONSTRAINT tablepk2_loginid_pk PRIMARY KEY,
 login_pwd VARCHAR2(20) CONSTRAINT tablepk2_loginpwd_nn NOT NULL,
 tel VARCHAR2(20)
);
--Table TABLE_PK2이(가) 생성되었습니다.

COL owner FOR A10
COL constraint_name FOR A20
COL constraint_type FOR A15
COL table_name FOR A10
SELECT
    t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_PK2'
;
--OWNER      CONSTRAINT_NAME      CONSTRAINT_TYPE TABLE_NAME
------------ -------------------- --------------- ----------
--SCOTT      TABLEPK2_LOGINPWD_NN C               TABLE_PK2 
--SCOTT      TABLEPK2_LOGINID_PK  P               TABLE_PK2 

--USER_INDEXES 조회 : PK를 생성하면 자동으로 인덱스가 생성됨
COL index_name FOR A20
COL table_owner FOR A15
COL table_name FOR A10
SELECT
    t1.index_name,
    t1.table_owner,
    t1.table_name
FROM user_indexes t1
WHERE t1.table_name LIKE 'TABLE_PK2'
;
--INDEX_NAME           TABLE_OWNER     TABLE_NAME
---------------------- --------------- ----------
--TABLEPK2_LOGINID_PK  SCOTT           TABLE_PK2