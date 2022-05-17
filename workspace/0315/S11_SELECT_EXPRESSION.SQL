-- ACCOUNTING IT 's DEPTNO -> 10
--SELECT  dname,
--        'IT ''s deptno' "dname",
--        deptno
--FROM dept
--;

--DNAME         dname           DEPTNO
-----------------------------------------
--ACCOUNTING	IT 's deptno	10
--RESEARCH	    IT 's deptno	20
--SALES	        IT 's deptno	30
--OPERATIONS	IT 's deptno	40

SELECT  dname,
        q'[IT 's deptno]'
        deptno
FROM dept
;
--DNAME         DEPTNO
----------------------------------------
--ACCOUNTING	IT 's deptno
--RESEARCH	    IT 's deptno
--SALES	        IT 's deptno
--OPERATIONS	IT 's deptno
