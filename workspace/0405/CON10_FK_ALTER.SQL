-- 테이블 생성 후 제약조건 추가
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
WHERE t1.table_name ='EMP_FK'
;
--OWNER      CONSTRAINT_NAME      CONSTRAINT_TYPE TABLE_NAME R_OWNER    R_CONSTRAINT_NAME
------------ -------------------- --------------- ---------- ---------- -----------------
--SCOTT      EMPFK_DEPTNO_FK      R               EMP_FK     SCOTT      DEPTFK_DEPTNO_PK 
--SCOTT      EMPFK_EMPNO_PK       P               EMP_FK                               

-- EMP_FK 테이블에 ename컬럼에 UNIQUE 생성 : empfk_ename_uk
ALTER TABLE emp_fk
ADD CONSTRAINT empfk_ename_uk UNIQUE(ename);
--Table EMP_FK이(가) 변경되었습니다.

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
WHERE t1.table_name ='EMP_FK'
;
--OWNER      CONSTRAINT_NAME      CONSTRAINT_TYPE TABLE_NAME R_OWNER    R_CONSTRAINT_NAME
------------ -------------------- --------------- ---------- ---------- -----------------
--SCOTT      EMPFK_DEPTNO_FK      R               EMP_FK     SCOTT      DEPTFK_DEPTNO_PK 
--SCOTT      EMPFK_EMPNO_PK       P               EMP_FK                                 
--SCOTT      EMPFK_ENAME_UK       U               EMP_FK     