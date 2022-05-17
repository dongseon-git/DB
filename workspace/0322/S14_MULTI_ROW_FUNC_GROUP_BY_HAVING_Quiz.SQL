-- p194 1분복습
-- HAVING절을 사용하여 EMP테이블의 부서별 직책의 평균 급여가 500 이상인 사원들의
-- 부서번호,직책,부서별 직책의 평균 급여가 출력되도록 SQL문 작성

SELECT
    deptno,
    job,
    AVG(NVL(sal,0)) AS "AVG"
FROM emp
GROUP BY deptno,job
HAVING AVG(NVL(sal,0)) >= 500
ORDER BY 1,2
;
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