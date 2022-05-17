-- PIVOT()함수
-- SELECT * FROM(SELECT year,month FROM tb_pivot)
-- PIVOT( PIVOT절 : 그룹 함수 적용된 컬럼 : MAX(month)
--        FOR절 : 피벗에 기준이 되는 컬럼 : FOR month
--        IN절 : PIVOT FOR에서 정의한 컬럼 필터링 : 1 AS M01, 2 AS M02...

-- 직급별, 부서별, 최고급여
SELECT * FROM(SELECT deptno, job, sal FROM emp)
PIVOT( MAX(sal) FOR deptno IN ( 10,
                                20,
                                30
                              )
)
;
--JOB               10         20         30
----------- ---------- ---------- ----------
--CLERK           1300       1100        950
--SALESMAN                              1600
--ANALYST                    3000           
--MANAGER         2450       2975       2850
--PRESIDENT       5000     


-- 직급별, 부서별, 최고급여 만들기 S09
-- job        10     20    30
-- ANALYST         3000
-- CLERKL   1300   1100   950
-- ....

-- 부서별 직급별  최고급여
--SELECT
--    deptno,
--    job,
--    MAX(sal) AS "MAX_SAL"
--FROM emp
--GROUP BY deptno,job
--ORDER BY deptno,job
--;
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