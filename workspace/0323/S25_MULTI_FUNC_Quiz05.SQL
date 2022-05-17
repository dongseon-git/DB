-- p213 Q5
-- 각 부서의 입사 연도별 사원 수, 최고 급여, 급여 합, 평균 급여를 출력하고
-- 각 부서별 소계와 총계를 출력하세요.

-- ROLLUP 함수 사용
SELECT
    deptno,
    TO_CHAR(hiredate,'YYYY') AS "HIRE_YEAR",
    COUNT(*) AS "CNT",
    MAX(sal) AS "MAX_SAL",
    SUM(sal) AS "SUM_SAL",
    AVG(NVL(sal,0)) AS "AVG_SAL"
FROM emp
GROUP BY ROLLUP(deptno,TO_CHAR(hiredate,'YYYY'))
;

-- UNION ALL 사용
--SELECT
--    deptno,
--    TO_CHAR(hiredate,'YYYY') AS "HIRE_YEAR",
--    COUNT(*) AS "CNT",
--    MAX(sal) AS "MAX_SAL",
--    SUM(sal) AS "SUM_SAL",
--    AVG(NVL(sal,0)) AS "AVG_SAL"
--FROM emp
--GROUP BY deptno,TO_CHAR(hiredate,'YYYY')
--UNION ALL
--SELECT
--    deptno,
--    NULL AS "HIRE_YEAR",
--    COUNT(*) AS "CNT",
--    MAX(sal) AS "MAX_SAL",
--    SUM(sal) AS "SUM_SAL",
--    AVG(NVL(sal,0)) AS "AVG_SAL"
--FROM emp
--GROUP BY deptno
--UNION ALL
--SELECT
--    NULL AS "DEPTNO",
--    NULL AS "HIRE_YEAR",
--    COUNT(*) AS "CNT",
--    MAX(sal) AS "MAX_SAL",
--    SUM(sal) AS "SUM_SAL",
--    AVG(NVL(sal,0)) AS "AVG_SAL"
--FROM emp
--ORDER BY 1,2
--;

--    DEPTNO HIRE_YEAR  CNT    MAX_SAL    SUM_SAL    AVG_SAL
------------ ---------- --- ---------- ---------- ----------
--        10 1981         2       5000       7450       3725
--        10 1982         1       1300       1300       1300
--        10              3       5000       8750 2916.66667
--        20 1980         1        800        800        800
--        20 1981         2       3000       5975     2987.5
--        20 1987         2       3000       4100       2050
--        20              5       3000      10875       2175
--        30 1981         6       2850       9400 1566.66667
--        30              6       2850       9400 1566.66667
--                       14       5000      29025 2073.21429