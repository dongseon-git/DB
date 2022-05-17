-- 다른 테이블과 관계를 맺는 FOREIGN KEY
-- FK 지정하기

--  문법1)
--   CREATE TABLE 테이블이름(
--      열 자료형 CONSTRAINT [제약조건이름] references 참조 테이블(참조할 컬럼)
--   )
--  문법2)
--   CREATE TABLE 테이블이름(
--      열 자료형 references 참조 테이블(참조할 컬럼)
--   )
--  문법3)
--   CREATE TABLE 테이블이름(
--      열 자료형 CONSTRAINT [제약조건이름] FOREIGN KEY(열) references 참조 테이블(참조할 컬럼)
--   )

-- DEPT_FK 테이블생성
CREATE TABLE dept_fk (
  deptno NUMBER(2) CONSTRAINT deptfk_deptno_pk PRIMARY KEY,
  dname VARCHAR2(14),
  loc VARCHAR2(13)
);
--Table DEPT_FK이(가) 생성되었습니다.

-- EMP_FK 테이블 생성
CREATE TABLE emp_fk(
  empno	   NUMBER(4)CONSTRAINT empfk_empno_pk PRIMARY KEY,				
  ename    VARCHAR2(10),
  job      VARCHAR2(9),
  mgr      NUMBER(4),
  hiredate DATE,
  sal      NUMBER(7,2),
  comm     NUMBER(7,2),
  deptno   NUMBER(2) CONSTRAINT empfk_deptno_fk references dept_fk(deptno)
);
--Table EMP_FK이(가) 생성되었습니다.

-- 생성한 emp_fk테이블과 dept_fk테이블의 관계 확인
COL owner FOR A10
COL constraint_name FOR A20
COL constraint_type FOR A15
COL table_name FOR A10
COL r_owner FOR A10
COL r_constraint_name FOR A17
SELECT 
    t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name,
    t1.r_owner,
    t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('EMP_FK','DEPT_FK')
;
--OWNER      CONSTRAINT_NAME      CONSTRAINT_TYPE TABLE_NAME R_OWNER    R_CONSTRAINT_NAME
------------ -------------------- --------------- ---------- ---------- -----------------
--SCOTT      DEPTFK_DEPTNO_PK     P               DEPT_FK                                
--SCOTT      EMPFK_EMPNO_PK       P               EMP_FK                                 
--SCOTT      EMPFK_DEPTNO_FK      R               EMP_FK     SCOTT      DEPTFK_DEPTNO_PK 