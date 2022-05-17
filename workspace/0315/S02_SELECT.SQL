-- 사원정보가 들어 있는 emp 테이블 
-- 사원데이터를 보관 및 관리하는 테이블
-- DESC
DESC emp;

--컬럼     NN        데이터 타입       설명
---------------------------------------
--EMPNO    NOT NULL NUMBER(4)        사번
--ENAME             VARCHAR2(10)     이름
--JOB               VARCHAR2(9)      사원직책
--MGR               NUMBER(4)        직속상관 사번
--HIREDATE          DATE             입사일
--SAL               NUMBER(7,2)      급여
--COMM              NUMBER(7,2)      추가수당
--DEPTNO            NUMBER(2)        부서번호