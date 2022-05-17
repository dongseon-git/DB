-- p288 Q4

-- 문제 진행 전 테이블 생성
--CREATE TABLE CHAP10HW_EMP      AS SELECT * FROM emp;
--CREATE TABLE CHAP10HW_DEPT     AS SELECT * FROM dept;
--CREATE TABLE CHAP10HW_SALGRADE AS SELECT * FROM SALGRADE;

-- CHAP10HW_EMP에 속한 사원 중, 60번 부서의 사원 중에 입사일이 가장 빠른 사원보다
-- 늦게 입사한 사원의 급여를 10%인상하고 80번 부서로 옮기는 SQL문 작성

-- 변경 전 데이터 확인
SELECT TO_CHAR(hiredate,'YYYY/MM/DD')
FROM chap10hw_emp
WHERE deptno = 60;
SELECT * FROM chap10hw_emp WHERE deptno = 80;
SELECT * FROM chap10hw_emp ORDER BY DEPTNO;

-- 데이터 변경하기
UPDATE Chap10hw_Emp
   SET sal = sal*1.1,
       deptno = 80
WHERE hiredate > (SELECT MIN(hiredate)
                  FROM chap10hw_emp
                  WHERE deptno = 60)
;
--4개 행 이(가) 업데이트되었습니다.

--변경 후 데이터 확인
SELECT * FROM chap10hw_emp WHERE deptno = 80;
-- EMPNO ENAME      JOB        MGR HIREDATE   SAL COMM  DEPTNO
-------- ---------- -------------- -------- ----- ---- -------
--  7205 TESE_USER5 CLERK     7201 16/07/20  2860           80
--  7206 TESE_USER6 CLERK     7201 16/09/08  2860           80
--  7207 TESE_USER7 LECTURER  7201 16/10/28  2530           80
--  7208 TESE_USER8 STUDENT   7201 18/03/09  1320           80

-- 확정하기
COMMIT;