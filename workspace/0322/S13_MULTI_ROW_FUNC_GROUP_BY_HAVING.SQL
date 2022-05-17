-- HAVING절 : GROUP BY절에 조건을 줄 때 사용 (GROUP BY절 내에 있는 조건)
-- HAVING절은 SELECT문에 GROUP BY절이 존재할 때만 사용할 수 있다.
-- 그리고 GROUP BY절을 통해 그룹화 된 결과 값의 범위를 제한하는데 사용합니다.

-- 급여평균(AVG)이 2000보다 큰 데이터 출력
SELECT 
    deptno,
    job,
    AVG(NVL(sal,0)) AS "AVG"
FROM emp
GROUP BY deptno,job
HAVING AVG(NVL(sal,0)) >= 2000
ORDER BY 1,2
;
-- NO HAVING
--    DEPTNO JOB              AVG
------------ --------- ----------
--        10 CLERK           1300
--        10 MANAGER         2450
--        10 PRESIDENT       5000
--        20 ANALYST         3000
--        20 CLERK            950
--        20 MANAGER         2975
--        30 CLERK            950
--        30 MANAGER         2850
--        30 SALESMAN        1400

-- HAVING AVG(NVL(sal,0)) >= 2000
--    DEPTNO JOB              AVG
------------ --------- ----------
--        10 MANAGER         2450
--        10 PRESIDENT       5000
--        20 ANALYST         3000
--        20 MANAGER         2975
--        30 MANAGER         2850

-- 급여(sal)가 3000보다 작은거 데이터 중에 급여평균(AVG)이 2000보다 큰 데이터 출력
SELECT 
    deptno,
    job,
    AVG(NVL(sal,0)) AS "AVG"
FROM emp
WHERE  sal <= 3000
GROUP BY deptno,job
HAVING AVG(NVL(sal,0)) >= 2000
ORDER BY 1,2
;
