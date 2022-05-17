-- 연산자 종류 활용 방법
-- +(더하기), -(빼기), *(곱하기) , /(나누기) 
SELECT *
FROM emp
WHERE sal * 12 = 36000
;

--EMPNO ENAME,  JOB,    MGR,    HIREDATE,   SAL, COMM,  DEPTNO
--------------------------------------------------------------
--7788	SCOTT	ANALYST	7566	87/04/19	3000		20
--7902	FORD	ANALYST	7566	81/12/03	3000		20