-- p288 Q3

-- 문제 진행 전 테이블 생성
--CREATE TABLE CHAP10HW_EMP      AS SELECT * FROM emp;
--CREATE TABLE CHAP10HW_DEPT     AS SELECT * FROM dept;
--CREATE TABLE CHAP10HW_SALGRADE AS SELECT * FROM SALGRADE;

-- CHAP10HW_EMP에속한 사원 중 50번부서에서 근무하는 사원들의 평균 급여보다 많은 급여를
-- 받고있는 사원들을 70번 부서로 옮기는 SQL문 작성

--데이터 변경 전 테이블 조회
SELECT * 
FROM chap10hw_emp 
WHERE sal > (SELECT AVG( NVL(sal,0) )
             FROM chap10hw_emp
             WHERE deptno = 50)
;

-- 데이터 변경
UPDATE chap10hw_emp
   SET deptno = 70
WHERE sal > (SELECT AVG( NVL(sal,0) )
             FROM chap10hw_emp
             WHERE deptno = 50)
;
--3개 행 이(가) 업데이트되었습니다.

--변경 후 데이터 확인
SELECT *
FROM chap10hw_emp
WHERE deptno = 70;
-- EMPNO ENAME      JOB        MGR HIREDATE   SAL  COMM DEPTNO
-------- ---------- --------- ---- -------- ----- ----- ------
--  7839 KING       PRESIDENT      81/11/17  5000           70
--  7201 TESE_USER1 MANAGER   7788 16/01/02  4500           70
--  7203 TESE_USER3 ANALYST   7201 16/04/11  3400           70
--  7205 TESE_USER5 CLERK     7201 16/07/20  2600           70
--  7206 TESE_USER6 CLERK     7201 16/09/08  2600           70

-- 확정하기
COMMIT;