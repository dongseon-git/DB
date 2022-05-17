-- p175 Q3
SELECT
    empno,
    ename,
--    comm,
    TO_CHAR(hiredate,'YYYY/MM/DD') AS "HIREDATE",
--    ADD_MONTHS(hiredate,3) AS "AFTER 3MONTH",
--    NEXT_DAY(ADD_MONTHS(hiredate,3),'¿ù') AS "Comming MONDAY",
    TO_CHAR(NEXT_DAY(ADD_MONTHS(hiredate,3),'¿ù'),'YYYY/MM/DD') AS "R_JOB",
    NVL2(comm,TO_CHAR(comm),'N/A') AS "COMM"
FROM emp
;
--     EMPNO ENAME      HIREDATE   R_JOB      COMM  
------------ ---------- ---------- ---------- ------
--      7876 ADAMS      1987/02/21 1987/05/25 N/A   
--      7369 SMITH      1980/12/17 1981/03/23 N/A   
--      7499 ALLEN      1981/02/20 1981/05/25 300   
--      7521 WARD       1981/02/22 1981/05/25 500   
--      7566 JONES      1981/04/02 1981/07/06 N/A   
--      7654 MARTIN     1981/09/28 1982/01/04 1400  
--      7698 BLAKE      1981/05/01 1981/08/03 N/A   
--      7782 CLARK      1981/06/09 1981/09/14 N/A   
--      7788 SCOTT      1987/04/19 1987/07/20 N/A   
--      7839 KING       1981/11/17 1982/02/22 N/A   
--      7844 TURNER     1981/09/08 1981/12/14 0     
--      7900 JAMES      1981/12/03 1982/03/08 N/A   
--      7902 FORD       1981/12/03 1982/03/08 N/A   
--      7934 MILLER     1982/01/23 1982/04/26 N/A   