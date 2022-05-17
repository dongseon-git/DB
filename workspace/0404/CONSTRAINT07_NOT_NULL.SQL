-- 제약조건 ( constraint )
--  테이블에 저장할 데이터를 제약하는 특수한 규칙.
--  DML에 제약 조건이 적용됨

-- NOT NULL    : 이 조건이 설정된 컬럼에는 NULL값이 입력되지 못하도록 한다. (N/N)
-- UNIQUE      : 이 조건이 설정된 컬럼에는 중복된 값이 입력되지 못한다.
-- PRIMARY KEY : NOT NULL + UNIQUE의 특징을 가지며 테이블 내에서 데이터들 끼리
--              ㄴ유일성을 보장하는 컬럼에 설정합니다. 그리고 테이블당 1개만 설정
-- FOREIGN KEY : 이 조건은 다른 테이블의 컬럼을 참조해서 검사를 합니다.
-- CHECK       : 이 조건에서 설정된 값만 입력을 허용하고 나머지는 거부합니다.

-- 빈 값을 허락하지 않는 NOT NULL
-- 1. 테이블 생성
CREATE TABLE table_notnull(
    LOGIN_ID VARCHAR2(20 BYTE) NOT NULL,
    LOGIN_PWD VARCHAR2(20) NOT NULL,
    tel VARCHAR2(20)
);
--Table TABLE_NOTNULL이(가) 생성되었습니다.

-- 테이블 구조 확인
DESC table_notnull;
--이름        널?       유형           
----------- -------- ------------ 
--LOGIN_ID  NOT NULL VARCHAR2(20) 
--LOGIN_PWD NOT NULL VARCHAR2(20) 
--TEL                VARCHAR2(20)

-- 2. NOT NULL 컬럼에 NULL 입력
INSERT INTO table_notnull (login_id,login_pwd,tel) VALUES('TEST_01',NULL,'010-1234-5678');
--오류 보고 -
--ORA-01400: NULL을 ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD") 안에 삽입할 수 없습니다

-- 3. NULL 입력
INSERT INTO table_notnull (login_id,login_pwd) VALUES('TEST_01','1234');
--1 행 이(가) 삽입되었습니다.

-- 4. UPDATE NOT NULL -> NULL
UPDATE table_notnull
   SET login_pwd = NULL
   WHERE login_id = 'TEST_01'
;
--오류 보고 -
--ORA-01407: NULL로 ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD")을 업데이트할 수 없습니다

-- 5. NOT NULL제약 조건 조회
-- USER_CONSTRAINTS
COL owner FOR A7
COL constraint_name FOR A17
COL constraint_type FOR A17
COL table_name FOR A17
SELECT
    t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_NOTNULL'
;
--OWNER   CONSTRAINT_NAME   CONSTRAINT_TYPE   TABLE_NAME       
--------- ----------------- ----------------- -----------------
--SCOTT   SYS_C008362       C                 TABLE_NOTNULL    
--SCOTT   SYS_C008363       C                 TABLE_NOTNULL    

-- CONSTRAINT_TYPE 
-- C : CHECK, NOTNULL
-- U : UNIQUE
-- P : PRIMARY KEY
-- R : FOREIGN KEY

-- EMP테이블 CONSTRAINT_TYPE조회
COL owner FOR A7
COL constraint_name FOR A17
COL constraint_type FOR A17
COL table_name FOR A17
SELECT
    t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'EMP'
;
-- CONSTRAINT_NAME : SYS_XXXX 시스템이 이름 부여