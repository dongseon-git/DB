-- CUBE()함수 : 소계 출력
-- CUBE함수는 ROLLUP함수를 사용했을 때보다 좀 더 많은결과가 나온다
-- 지정한 모든 열에서 가능한 조합의 결과를 모두 출력
-- GROUP BY CUBE(그룹화 컬럼.....)  N
-- 2*n승 소계
-- CUBE(A,B,C)
-- 2의3승 = 총 8건의 소계

-- SELECT [조회할 열 이름]
-- FROM [조회할 테이블 이름]
-- WHERE [조회할 행을 선별하는 조건식]
-- GROUP BY CUBE[그룹화할 열을 지정(여러개 지정 가능)]
-- HAVING [출력 그룹을 제한하는 조건식]  
-- ORDER BY [정렬하려는 열 지정]

-- ex) 부서별 평균 급여와 사원 수, 직급별 평균 급여와 사원 수, 
--     부서와 직급별 평균급여와 사원 수, 전체 평균 월 급여와 사원 수를 구하시오
--   1)부서별 평균 급여와 사원 수
--   2)직급별 평균 급여와 사원 수
--   3)부서와 직급별 평균 급여 및 사원 수
--   4)전체 사원의 평균 급여와 사원 수

-- CUBE()함수 없이 사용

--부서와 직급별 평균 급여 및 사원 수
SELECT
    deptno,
    job,
    AVG(NVL(sal,0)) AS "AVG_SAL",
    COUNT(*) AS "CNT_EMP"
FROM emp
GROUP BY deptno,job
UNION ALL
--부서별 평균 급여와 사원 수
SELECT
    deptno,
    null AS "JOB",
    AVG(NVL(sal,0)) AS "AVG_SAL",
    COUNT(*) AS "CNT_EMP"
FROM emp
GROUP BY deptno
UNION ALL
-- 직급별 평균 급여와 사원수
SELECT
    null AS "DEPTNO",
    job,
    AVG(NVL(sal,0)) AS "AVG_SAL",
    COUNT(*) AS "CNT_EMP"
FROM emp
GROUP BY job
UNION ALL
--전체 사원의 평균 급여와 사원 수
SELECT
    null AS "DEPTNO",
    null AS "JOB",
    AVG(NVL(sal,0)) AS "AVG_SAL",
    COUNT(*) AS "CNT_EMP"
FROM emp
ORDER BY deptno,job ASC
;
-- 1. DEPTNO 그룹 집계
-- 2. JOB 그룹 집계
-- 2. DEPTNO, JOB 그룹 집계
-- 3. 전체 그룹 집계
--    DEPTNO JOB          AVG_SAL    CNT_EMP
------------ --------- ---------- ----------
--        10 CLERK           1300          1
--        10 MANAGER         2450          1
--        10 PRESIDENT       5000          1
--        10           2916.66667          3
--        20 ANALYST         3000          2
--        20 CLERK            950          2
--        20 MANAGER         2975          1
--        20                 2175          5
--        30 CLERK            950          1
--        30 MANAGER         2850          1
--        30 SALESMAN        1400          4
--        30           1566.66667          6
--           ANALYST         3000          2
--           CLERK         1037.5          4
--           MANAGER   2758.33333          3
--           PRESIDENT       5000          1
--           SALESMAN        1400          4
--                     2073.21429         14