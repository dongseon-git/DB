-- p239 Q2
--각 부서별 평균 급여, 최대급여, 최소급여, 사원수를 출력해 보세요.

-- 강사님풀이
SELECT
    t1.*,
    t2.dname
FROM(
    SELECT 
        deptno,
        TRUNC(AVG(NVL(sal,0))) AS avg_sal,
        MAX(NVL(sal,0)) AS max_sal,
        MIN(NVL(sal,0)) AS min_sal,
        COUNT(*) AS cnt
    FROM emp
    GROUP BY deptno
) t1, dept t2
WHERE t1.deptno = t2.deptno
;

-- ORACLE JOIN
SELECT
    t1.deptno AS deptno,
    t2.dname AS dname,
    TRUNC(AVG(NVL(t1.sal,0))) AS avg_sal,
    MAX(t1.sal) AS max_sal,
    MIN(t1.sal) AS min_sal,
    COUNT(*) AS cnt
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
GROUP BY t1.deptno, t2.dname
;

-- ANSI JOIN
SELECT
    t1.deptno AS deptno,
    t2.dname AS dname,
    TRUNC(AVG(NVL(t1.sal,0))) AS avg_sal,
    MAX(t1.sal) AS max_sal,
    MIN(t1.sal) AS min_sal,
    COUNT(*) AS cnt
FROM emp t1 JOIN dept t2
ON t1.deptno = t2.deptno
GROUP BY t1.deptno, t2.dname
;
--    DEPTNO DNAME             AVG_SAL    MAX_SAL    MIN_SAL        CNT
------------ -------------- ---------- ---------- ---------- ----------
--        10 ACCOUNTING           2916       5000       1300          3
--        20 RESEARCH             2175       3000        800          5
--        30 SALES                1566       2850        950          6