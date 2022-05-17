-- p394 Q1
-- DEPT_CONST 테이블과 EMP_CONST테이블을 다음과 같은 특성 및 제약 조건을 지정하여 생성

-- (1) DEPT_CONST 테이블
CREATE TABLE dept_const(
    deptno NUMBER(2)    CONSTRAINT deptconst_deptno_pk PRIMARY KEY,
    dname  VARCHAR2(14) CONSTRAINT deptconst_dname_unq UNIQUE,
    loc    VARCHAR2(13) CONSTRAINT deptconst_loc_nn    NOT NULL
);
--Table DEPT_CONST이(가) 생성되었습니다.

-- (2) EMP_CONST 테이블
CREATE TABLE emp_const(
    empno    NUMBER(4)    CONSTRAINT empconst_empno_pk PRIMARY KEY,
    ename    VARCHAR2(10) CONSTRAINT empconst_ename_nn NOT NULL,
    job      VARCHAR2(9),
    tel      VARCHAR2(20) CONSTRAINT empconst_tel_unq UNIQUE,
    hiredate DATE,
    sal      NUMBER(7,2)  CONSTRAINT empconst_sal_chk CHECK (sal BETWEEN 1000 AND 9999),
    comm     NUMBER(7,2),
    deptno   NUMBER(2)    CONSTRAINT empconst_deptno_fk REFERENCES dept_const(deptno)
);
--Table EMP_CONST이(가) 생성되었습니다.

-- (3) 테이블 생성 후 데이터 사전 뷰를 사용하여 다음과 같이 두 테이블의 제약조건을 확인
COL owner FOR A10
COL constraint_name FOR A25
COL constraint_type FOR A15
COL table_name FOR A14
SELECT
    t1.table_name,
    t1.constraint_name,
    t1.constraint_type    
FROM user_constraints t1
WHERE t1.table_name IN ('DEPT_CONST','EMP_CONST')
ORDER BY constraint_name
;
--TABLE_NAME     CONSTRAINT_NAME           CONSTRAINT_TYPE
---------------- ------------------------- ---------------
--DEPT_CONST     DEPTCONST_DEPTNO_PK       P              
--DEPT_CONST     DEPTCONST_DNAME_UNQ       U              
--DEPT_CONST     DEPTCONST_LOC_NN          C              
--EMP_CONST      EMPCONST_DEPTNO_FK        R              
--EMP_CONST      EMPCONST_EMPNO_PK         P              
--EMP_CONST      EMPCONST_ENAME_NN         C              
--EMP_CONST      EMPCONST_SAL_CHK          C              
--EMP_CONST      EMPCONST_TEL_UNQ          U