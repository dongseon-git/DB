-- GROUP BY절 : 결과 값을 원하는 열로 묶어 출력
-- GROUP BY절에 명시하는 열은 여러개 지정할 수 있습니다.
-- 먼저 지정한 열로 대그룹을 나누고 그다음 지정한 열로 소그룹을 나눕니다.
-- GROUP BY절에는 별칭(AS)이 인식되지 않는다. 즉 열 이름이나 연산식을 그대로 지정해야함

-- 부서별(대그룹) 직무별(소그룹) 평균 급여
-- ORACLE 10G이 이전에서는 정렬 되어서 출력(SORT로 인한 성능저하 문제로 현재 사라짐)
-- ORACLE 10G이 이후에서는 정렬 안되어 출력, ORDER BY절 명기
SELECT deptno,job,AVG(NVL(sal,0)) AS "AVG_SAL"
FROM emp
GROUP BY deptno,job
ORDER BY 1,2 
;
--    DEPTNO JOB          AVG_SAL
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