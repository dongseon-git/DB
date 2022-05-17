-- p239 Q1
-- 급여(sal)가 2000 초과인 사원들의 부서 정보, 사원정보를 출력해보세요.
-- ORACLE JOIN
SELECT
    t1.deptno,
    t2.dname,
    t1.empno,
    t1.ename,
    t1.sal
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
AND t1.sal > 2000
ORDER BY t1.deptno, t1.sal
;

-- ANSI JOIN
SELECT
    t1.deptno,
    t2.dname,
    t1.empno,
    t1.ename,
    t1.sal
FROM emp t1 INNER JOIN dept t2
ON t1.deptno = t2.deptno
AND t1.sal > 2000
ORDER BY t1.deptno, t1.sal
;
--    DEPTNO DNAME          ENAME             SAL
------------ -------------- ---------- ----------
--        10 ACCOUNTING     CLARK            2450
--        10 ACCOUNTING     KING             5000
--        20 RESEARCH       JONES            2975
--        20 RESEARCH       FORD             3000
--        20 RESEARCH       SCOTT            3000
--        30 SALES          BLAKE            2850