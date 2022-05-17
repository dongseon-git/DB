-- 중복되지 않는 값 UNIQUE
-- 열에 저장할 데이터의 중복을 허용하지 않고자 할 때 사용합니다.
-- (단, 지정한 열에 NULL값은 여러개 존재 가능)

-- 테이블을 생성하며 제약 조건 지정
CREATE TABLE table_unique(
    LOGIN_ID  VARCHAR2(20 BYTE) UNIQUE,
    LOGIN_PWD VARCHAR2(20)      NOT NULL,
    tel       VARCHAR2(20)
);
--Table TABLE_UNIQUE이(가) 생성되었습니다.

-- 테이블 생성 확인
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
WHERE t1.table_name = 'TABLE_UNIQUE'
;
--OWNER   CONSTRAINT_NAME      CONSTRAINT_TYPE   TABLE_NAME       
--------- -------------------- ----------------- -----------------
--SCOTT   SYS_C008368          C                 TABLE_UNIQUE     
--SCOTT   SYS_C008369          U                 TABLE_UNIQUE  