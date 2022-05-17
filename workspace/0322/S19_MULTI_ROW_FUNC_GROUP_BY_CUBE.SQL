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

-- CUBE()함수 사용
SELECT
    deptno,
    job,
    AVG(NVL(sal,0)) AS "AVG_SAL",
    COUNT(*) AS "CNT_EMP"
FROM emp
GROUP BY CUBE(deptno,job)
ORDER BY deptno,job
;
-- 1. DEPTNO 그룹 집계
-- 2. JOB 그룹 집계
-- 2. DEPTNO, JOB 그룹 집계
-- 3. 전체 그룹 집계