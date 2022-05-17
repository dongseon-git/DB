-- NVL2 Quiz01
-- EMP테이블에서 deptno가 30번인 사원들을 조회하여 comm값이 있을 경우 
-- 'Exist'을 출력하고 comm값이 null일 경우 'NULL'을 출력하세요.
SELECT
    empno,
    ename,
    comm,
    sal,
    NVL2(comm,'Exist','NULL') AS "NVL2"
FROM emp
WHERE deptno = 30
;
--     EMPNO ENAME            COMM        SAL NVL2 
------------ ---------- ---------- ---------- -----
--      7499 ALLEN             300       1600 Exist
--      7521 WARD              500       1250 Exist
--      7654 MARTIN           1400       1250 Exist
--      7698 BLAKE                       2850 NULL 
--      7844 TURNER              0       1500 Exist
--      7900 JAMES                        950 NULL
