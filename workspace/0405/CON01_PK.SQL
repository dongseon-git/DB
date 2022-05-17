-- 유일하게 하나만 있는 값 PRIMARY KEY
-- PRIMARY KEY : NOT NULL + UNIQUE의 특징을 가지며 테이블 내에서 데이터들 끼리
--               유일성을 보장하는 컬럼에 설정합니다. 그리고 테이블당 1개만 설정
-- 특정 열을 PK로 지정하면 해당 열에는 자동으로 인덱스가 만들어 진다.

CREATE TABLE table_pk(
 login_id VARCHAR2(20) PRIMARY KEY,
 login_pwd VARCHAR2(20) NOT NULL,
 tel VARCHAR2(20)
);
--Table TABLE_PK이(가) 생성되었습니다.

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
WHERE t1.table_name = 'TABLE_PK'
;
--OWNER      CONSTRAINT_NAME      CONSTRAINT_TYPE  TABLE_NAME
------------ -------------------- ---------------  ----------
--SCOTT      SYS_C008426          C                TABLE_PK  
--SCOTT      SYS_C008427          P                TABLE_PK

--USER_INDEXES 조회 : PK를 생성하면 자동으로 인덱스가 생성됨
COL index_name FOR A15
COL table_owner FOR A15
COL table_name FOR A10
SELECT
    t1.index_name,
    t1.table_owner,
    t1.table_name
FROM user_indexes t1
WHERE t1.table_name LIKE 'TABLE_PK'
;
--INDEX_NAME      TABLE_OWNER     TABLE_NAME
----------------- --------------- ----------
--SYS_C008427     SCOTT           TABLE_PK 