-- p248 1분복습
-- 서브쿼리를 사용하여 EMP테이블에서 전체 사원의 평균 급여보다 작거나 같은 급여를
-- 받고 있는 20번 부서의 사원 및 부서의 정보를 구해오도록 코드를 채워 보세요.
SELECT * FROM emp;
SELECT * FROM dept;
SELECT
    t1.empno,
    t1.ename,
    t1.job,
    t1.sal,
    t2.deptno,
    t2.dname,
    t2.loc
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
AND t1.deptno = 20
AND t1.sal <= ( SELECT AVG( NVL(sal,0) )
                FROM emp
                )
;
--     EMPNO ENAME      JOB              SAL     DEPTNO DNAME          LOC          
------------ ---------- --------- ---------- ---------- -------------- -------------
--      7876 ADAMS      CLERK           1100         20 RESEARCH       DALLAS       
--      7369 SMITH      CLERK            800         20 RESEARCH       DALLAS 