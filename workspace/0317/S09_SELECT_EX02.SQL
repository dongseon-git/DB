-- p125 Q2
-- EMP테이블을 사용하여 30번 부서에서 근무하고 있는 사원중 직책이 SALESMAN인 사원의
-- 사원번호, 이름, 직책, 급여, 부서번호를 출력하는 SQL문 작성
SELECT 
    t1.empno,
    t1.ename,
    t1.job,
    t1.sal,
    t1.deptno
FROM emp t1
WHERE t1.deptno = 30
AND t1.job = 'SALESMAN'
;

--     EMPNO ENAME      JOB              SAL     DEPTNO
------------ ---------- --------- ---------- ----------
--      7499 ALLEN      SALESMAN        1600         30
--      7521 WARD       SALESMAN        1250         30
--      7654 MARTIN     SALESMAN        1250         30
--      7844 TURNER     SALESMAN        1500         30