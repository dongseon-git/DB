SELECT
    empno,
    ename,
    job,
    sal,
    deptno
FROM emp
WHERE deptno IN ( SELECT deptno
                  FROM emp
                  WHERE deptno = &dno);
--     EMPNO ENAME      JOB              SAL     DEPTNO
------------ ---------- --------- ---------- ----------
--      7876 ADAMS      CLERK           1100         20
--      7369 SMITH      CLERK            800         20
--      7566 JONES      MANAGER         2975         20
--      7788 SCOTT      ANALYST         3000         20
--      7902 FORD       ANALYST         3000         20