explain plan for
SELECT
    deptno,
    job,
    AVG(NVL(sal,0)) AS "AVG_SAL",
    COUNT(*) AS "CNT_EMP"
FROM emp
GROUP BY deptno,job
UNION ALL
SELECT
    deptno,
    null AS "JOB",
    AVG(NVL(sal,0)) AS "AVG_SAL",
    COUNT(*) AS "CNT_EMP"
FROM emp
GROUP BY deptno
UNION ALL
SELECT
    null AS "DEPTNO",
    null AS "JOB",
    AVG(NVL(sal,0)) AS "AVG_SAL",
    COUNT(*) AS "CNT_EMP"
FROM emp
ORDER BY deptno,job ASC
;
col plan_table_outpot format a80
SELECT * FROM table(dbms_xplan.display);
--PLAN_TABLE_OUTPUT                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Plan hash value: 3259471421
-------------------------------------------------------------------------------
--| Id  | Operation            | Name | Rows  | Bytes | Cost (%CPU)| Time     |
-------------------------------------------------------------------------------
--|   0 | SELECT STATEMENT     |      |    29 |   825 |    12  (25)| 00:00:01 |
--|   1 |  SORT ORDER BY       |      |    29 |   825 |    11  (19)| 00:00:01 |
--|   2 |   UNION-ALL          |      |       |       |            |          |
--|   3 |    HASH GROUP BY     |      |    14 |   448 |     4  (25)| 00:00:01 |
--|   4 |     TABLE ACCESS FULL| EMP  |    14 |   448 |     3   (0)| 00:00:01 |
--|   5 |    HASH GROUP BY     |      |    14 |   364 |     4  (25)| 00:00:01 |
--|   6 |     TABLE ACCESS FULL| EMP  |    14 |   364 |     3   (0)| 00:00:01 |
--|   7 |    SORT AGGREGATE    |      |     1 |    13 |            |          |
--|   8 |     TABLE ACCESS FULL| EMP  |    14 |   182 |     3   (0)| 00:00:01 |
-------------------------------------------------------------------------------

explain plan for
SELECT
    deptno,
    job,
    AVG(NVL(sal,0)) AS "AVG_SAL",
    COUNT(*) AS "CNT_EMP"
FROM emp
GROUP BY ROLLUP (deptno,job)
;
col plan_table_outpot format a80
SELECT * FROM table(dbms_xplan.display);
--PLAN_TABLE_OUTPUT
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Plan hash value: 52302870
-------------------------------------------------------------------------------
--| Id  | Operation            | Name | Rows  | Bytes | Cost (%CPU)| Time     |
-------------------------------------------------------------------------------
--|   0 | SELECT STATEMENT     |      |    14 |   448 |     4  (25)| 00:00:01 |
--|   1 |  SORT GROUP BY ROLLUP|      |    14 |   448 |     4  (25)| 00:00:01 |
--|   2 |   TABLE ACCESS FULL  | EMP  |    14 |   448 |     3   (0)| 00:00:01 |
-------------------------------------------------------------------------------