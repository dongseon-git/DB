-- CREATE(생성) : 데이터베이스 객체를 생성하는데 사용하는 명령어
-- 문법)
--  CREATE TABLE 소유계정.테이블이름(
--      열(컬럼)이름1 열1자료형,
--      열(컬럼)이름2 열2자료형,
--      열(컬럼)이름n 열n자료형, ...)

-- EMP_DDL 생성
CREATE TABLE emp_ddl(
EMPNO     NUMBER   (4  )
,ENAME    VARCHAR2 (10 )
,JOB      VARCHAR2 (9  )
,MGR      NUMBER   (4  )
,HIREDATE DATE
,SAL      NUMBER   (7,2)
,COMM     NUMBER   (7,2)
,DEPTNO   NUMBER   (2  )
);
--Table EMP_DDL이(가) 생성되었습니다.

--구조확인
DESC emp_ddl;
--이름       널? 유형           
---------- -- ------------ 
--EMPNO       NUMBER(4)    
--ENAME       VARCHAR2(10) 
--JOB         VARCHAR2(9)  
--MGR         NUMBER(4)    
--HIREDATE    DATE         
--SAL         NUMBER(7,2)  
--COMM        NUMBER(7,2)  
--DEPTNO      NUMBER(2)

-- TABLE COMMENT
COMMENT ON TABLE emp_ddl IS '사원정보';
--Comment이(가) 생성되었습니다.

-- COLUMN COMMENT
COMMENT ON COLUMN emp_ddl.EMPNO    IS '사번';
COMMENT ON COLUMN emp_ddl.ENAME    IS '이름';
COMMENT ON COLUMN emp_ddl.JOB      IS '직급';
COMMENT ON COLUMN emp_ddl.MGR      IS '매니저';
COMMENT ON COLUMN emp_ddl.HIREDATE IS '입사일';
COMMENT ON COLUMN emp_ddl.SAL      IS '급여';
COMMENT ON COLUMN emp_ddl.COMM     IS '수당';
COMMENT ON COLUMN emp_ddl.DEPTNO   IS '부서번호';
--Comment이(가) 생성되었습니다.