--p92 Q3
SELECT 
    empno AS "EMPLOYEE_NO",
    ename AS "EMPLOYEE_NAME",
    mgr AS "MANAGER",
    sal AS "SALARY",
    comm AS "COMMISSION",
    deptno AS "DEPARTMENT_NO"
FROM emp
ORDER BY DEPTNO DESC, ename ASC
;

--EMPLOYEE_NO   EMPLOYEE_NAME   MANAGER     SALARY  COMMISSION  DEPARTMENT_NO
-----------------------------------------------------------------------------
--7499	        ALLEN	        7698	    1600	300	        30
--7698	        BLAKE	        7839	    2850		        30
--7900	        JAMES	        7698	    950		            30
--7654	        MARTIN	        7698	    1250	1400	    30
--7844	        TURNER	        7698	    1500	0	        30
--7521	        WARD	        7698	    1250	500	        30
--7876	        ADAMS	        7788	    1100		        20
--7902	        FORD	        7566	    3000		        20
--7566	        JONES	        7839	    2975		        20
--7788	        SCOTT	        7566	    3000		        20
--7369	        SMITH	        7902	    800		            20
--7782	        CLARK	        7839	    2450		        10
--7839	        KING	        	        5000		        10
--7934	        MILLER	        7782	    1300		        10