-- p126 Q4
SELECT *
FROM emp
WHERE sal < 2000
OR sal > 3000
;
--     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
------------ ---------- --------- ---------- -------- ---------- ---------- ----------
--      7876 ADAMS      CLERK           7788 87/02/21       1100                    20
--      7369 SMITH      CLERK           7902 80/12/17        800                    20
--      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
--      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
--      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
--      7839 KING       PRESIDENT            81/11/17       5000                    10
--      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
--      7900 JAMES      CLERK           7698 81/12/03        950                    30
--      7934 MILLER     CLERK           7782 82/01/23       1300                    10



