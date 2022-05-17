-- p212 Q1
-- EMP테이블을 이용하여 부서번호,평균급여,최고급여,최저급여,사원수를 출력합니다.
-- 단 평균급여를 출력할 때 소수점을 제외하고 각 부서 번호별로 출력하세요.

SELECT
    deptno,
    TRUNC(AVG(NVL(sal,0))) AS "AVG_SAL",
    MAX(sal) AS "MAX_SAL",
    MIN(sal) AS "MIN_SAL",
    COUNT(*) AS "CNT"
FROM emp
GROUP BY deptno
ORDER BY deptno DESC
;
--    DEPTNO    AVG_SAL    MAX_SAL    MIN_SAL        CNT
------------ ---------- ---------- ---------- ----------
--        30       1566       2850        950          6
--        20       2175       3000        800          5
--        10       2916       5000       1300          3
