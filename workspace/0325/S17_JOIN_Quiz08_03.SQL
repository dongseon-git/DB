-- p239 Q3
-- 모든 부서정보와 사원정보를 오른쪽과 같이 부서번호,사원이름 순으로 정렬하여 출력해보세요.

-- ORACLE JOIN
SELECT
    t2.deptno,
    t2.dname,
    t1.empno,
    t1.job,
    t1.sal
FROM emp t1, dept t2
WHERE t1.deptno(+) = t2.deptno
ORDER BY t2.deptno,t1.ename
;

-- ANSI JOIN
SELECT
    t2.deptno,
    t2.dname,
    t1.empno,
    t1.job,
    t1.sal
FROM emp t1 RIGHT OUTER JOIN dept t2
ON t1.deptno = t2.deptno
ORDER BY t2.deptno,t1.ename
;
--    DEPTNO DNAME               EMPNO JOB              SAL
------------ -------------- ---------- --------- ----------
--        10 ACCOUNTING           7782 MANAGER         2450
--        10 ACCOUNTING           7839 PRESIDENT       5000
--        10 ACCOUNTING           7934 CLERK           1300
--        20 RESEARCH             7876 CLERK           1100
--        20 RESEARCH             7902 ANALYST         3000
--        20 RESEARCH             7566 MANAGER         2975
--        20 RESEARCH             7788 ANALYST         3000
--        20 RESEARCH             7369 CLERK            800
--        30 SALES                7499 SALESMAN        1600
--        30 SALES                7698 MANAGER         2850
--        30 SALES                7900 CLERK            950
--        30 SALES                7654 SALESMAN        1250
--        30 SALES                7844 SALESMAN        1500
--        30 SALES                7521 SALESMAN        1250