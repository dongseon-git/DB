INSERT INTO EMP_TRG(
EMPNO,
ENAME,
JOB,
MGR,
HIREDATE,
SAL,
COMM,
DEPTNO
)VALUES(
8888,
'TESTEMP',
'CLERK',
7788,
TO_DATE('2022-03-01','YYYY-MM-DD'),
1200,
NULL,
20
);
COMMIT;
SELECT * FROM EMP_TRG;
SELECT * FROM EMP_TRG_LOG;


DELETE FROM EMP_TRG
where empno = 9999;



