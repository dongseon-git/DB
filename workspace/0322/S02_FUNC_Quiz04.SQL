-- p175 Q4
COL mgr FOR 99999
COL CHG_MGR FOR A5
SELECT
    empno,
    ename,
    mgr,
--    SUBSTR(mgr,1,2),
    CASE WHEN mgr IS NULL          THEN '0000'
         WHEN SUBSTR(mgr,1,2) = 75 THEN '5555'
         WHEN SUBSTR(mgr,1,2) = 76 THEN '6666'
         WHEN SUBSTR(mgr,1,2) = 77 THEN '7777'
         WHEN SUBSTR(mgr,1,2) = 78 THEN '8888'
         ELSE TO_CHAR(mgr)
    END AS "CHG_MGR"
FROM emp
ORDER BY empno ASC
;
--     EMPNO ENAME         MGR CHG_MGR
------------ ---------- ------ --------
--      7369 SMITH        7902 7902 
--      7499 ALLEN        7698 6666 
--      7521 WARD         7698 6666 
--      7566 JONES        7839 8888 
--      7654 MARTIN       7698 6666 
--      7698 BLAKE        7839 8888 
--      7782 CLARK        7839 8888 
--      7788 SCOTT        7566 5555 
--      7839 KING              0000 
--      7844 TURNER       7698 6666 
--      7876 ADAMS        7788 7777 
--      7900 JAMES        7698 6666 
--      7902 FORD         7566 5555 
--      7934 MILLER       7782 7777 