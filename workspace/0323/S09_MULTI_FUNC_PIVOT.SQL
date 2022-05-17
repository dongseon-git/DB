-- 직급별, 부서별, 최고급여 만들기
-- job        10     20    30
-- ANALYST         3000
-- CLERKL   1300   1100   950
-- ....

-- 부서별 직급별  최고급여
SELECT
    deptno,
    job,
    MAX(sal) AS "MAX_SAL"
FROM emp
GROUP BY deptno,job
ORDER BY deptno,job
;
--    DEPTNO JOB          MAX_SAL
------------ --------- ----------
--        10 CLERK           1300
--        10 MANAGER         2450
--        10 PRESIDENT       5000
--        20 ANALYST         3000
--        20 CLERK           1100
--        20 MANAGER         2975
--        30 CLERK            950
--        30 MANAGER         2850
--        30 SALESMAN        1600