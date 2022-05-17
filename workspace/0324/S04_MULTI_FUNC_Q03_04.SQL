-- Emp 테이블을 사용하여 부서별로 직급별로 급여 합계 결과를 출력하세요.
-- DEPTNO   CLERK   MANAGER PRESIDENT   ANALYST SALESMAN    TOTAL
--     10    1300      2450      5000         0        0     8750
--     20    1900      2975         0      6000        0    10875
--     30     950      2850         0         0     5600     9400
--           4150      8275      5000      6000     5600    29025

SELECT
    deptno,
    SUM(DECODE(job,'CLERK',sal)) AS CLERK,
    SUM(DECODE(job,'MANAGER',sal)) AS MANAGER,
    SUM(DECODE(job,'PRESIDENT',sal)) AS PRESIDENT,
    SUM(DECODE(job,'ANALYST',sal)) AS ANALYST,
    SUM(DECODE(job,'SALESMAN',sal)) AS SALESMAN,
    SUM(sal) AS TOTAL
FROM emp
GROUP BY ROLLUP(deptno)
ORDER BY deptno
;
--    DEPTNO      CLERK    MANAGER  PRESIDENT    ANALYST   SALESMAN      TOTAL
------------ ---------- ---------- ---------- ---------- ---------- ----------
--        10       1300       2450       5000                             8750
--        20       1900       2975                  6000                 10875
--        30        950       2850                             5600       9400
--                 4150       8275       5000       6000       5600      29025


--SELECT * FROM(SELECT deptno AS DEPTNO,job,sal FROM emp)
--PIVOT(SUM(sal) FOR job IN (
--                            'CLERK' AS CLERK,
--                            'MANAGER' AS MANAGER,
--                            'PRESIDENT' AS PRESIDENT,
--                            'ANALYST' AS ANALYST,
--                            'SALESMAN' AS SALESMAN
--                            )
--)
--ORDER BY DEPTNO
--;