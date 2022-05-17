-- UNPIVOT : COLUMN단위를 ROW단위로 변경

-- UNPIVOT 사용
-- 출력 sal 명시
-- FOR 세로로 늘어 뜨릴 가로 열을 명시
SELECT *
FROM (
    SELECT 
        deptno,
        MAX(DECODE(job,'CLERK',sal))     AS "CLERK",
        MAX(DECODE(job,'SALESMAN',sal))  AS "SALESMAN",
        MAX(DECODE(job,'ANALYST',sal))   AS "ANALYST",
        MAX(DECODE(job,'MANAGER',sal))   AS "MANAGER",
        MAX(DECODE(job,'PRESIDENT',sal)) AS "PRESIDENT"
    FROM emp
    GROUP BY deptno
    ORDER BY deptno
)
UNPIVOT(
    sal FOR job IN ( CLERK
                    ,SALESMAN
                    ,ANALYST
                    ,MANAGER
                    ,PRESIDENT
                   )
)
ORDER BY deptno,job
;
--    DEPTNO JOB              SAL
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