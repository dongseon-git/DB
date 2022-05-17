-- p174  Q1
COL MASKING_EMPNO FOR A15
COL MASKING_ENAME FOR A15
SELECT
    empno,
    REPLACE(empno,SUBSTR(empno,3,4),'**') AS "MASKING_EMPNO",
    ename,
    REPLACE(ename,SUBSTR(ename,2,5),'****') AS "MASKING_ENAME"
FROM emp
WHERE LENGTH(ename) >= 5
AND   LENGTH(ename) < 6
ORDER BY empno ASC
;
--     EMPNO MASKING_EMPNO   ENAME      MASKING_ENAME  
------------ --------------- ---------- ---------------
--      7369 73**            SMITH      S****          
--      7499 74**            ALLEN      A****          
--      7566 75**            JONES      J****          
--      7698 76**            BLAKE      B****          
--      7782 77**            CLARK      C****          
--      7788 77**            SCOTT      S****          
--      7876 78**            ADAMS      A****          
--      7900 79**            JAMES      J****          
--SELECT
--    empno,
--    RPAD(SUBSTR(empno,1,2),4,'**') AS "MASKING_EMPNO",
--    ename,
--    RPAD(SUBSTR(ename,1,1),LENGTH(ename),'****') AS "MASKING_NAME"
--FROM emp
--WHERE LENGTH(ename) >= 5
--AND   LENGTH(ename) < 6
--;