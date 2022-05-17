-- CASE문
-- p172 실습 6-48
-- EMP테이블에서 MANAGER이면 10%, SALESMAN 5%, ANALYST 그대로, 나머지 3% 급여인상

SELECT
    empno,
    ename,
    sal,
    job,
    CASE WHEN job = 'MANAGER' THEN sal*1.1
         WHEN job = 'SALESMAN' THEN sal*1.05
         WHEN job = 'ANALYST' THEN sal
         ELSE sal*1.03
    END AS "UP_SAL"
FROM emp
;
--     EMPNO ENAME             SAL JOB           UP_SAL
------------ ---------- ---------- --------- ----------
--      7876 ADAMS            1100 CLERK           1133
--      7369 SMITH             800 CLERK            824
--      7499 ALLEN            1600 SALESMAN        1680
--      7521 WARD             1250 SALESMAN      1312.5
--      7566 JONES            2975 MANAGER       3272.5
--      7654 MARTIN           1250 SALESMAN      1312.5
--      7698 BLAKE            2850 MANAGER         3135
--      7782 CLARK            2450 MANAGER         2695
--      7788 SCOTT            3000 ANALYST         3000
--      7839 KING             5000 PRESIDENT       5150
--      7844 TURNER           1500 SALESMAN        1575
--      7900 JAMES             950 CLERK          978.5
--      7902 FORD             3000 ANALYST         3000
--      7934 MILLER           1300 CLERK           1339