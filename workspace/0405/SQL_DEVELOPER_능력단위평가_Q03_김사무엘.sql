--Q3 EMP테이블을 사용하여 부서별 직책별 최고 급여를 아래와 같이 출력하세요.
SELECT
    deptno,
    MAX(DECODE(job,'CLERK',sal)) AS CLERK,
    MAX(DECODE(job,'SALESMAN',sal)) AS SALESMAN,
    MAX(DECODE(job,'ANALYST',sal)) AS ANALYST,
    MAX(DECODE(job,'MANAGER',sal)) AS MANAGER,
    MAX(DECODE(job,'PRESIDENT',sal)) AS PRESIDENT
FROM emp
GROUP BY deptno
;
--    DEPTNO      CLERK   SALESMAN    ANALYST    MANAGER  PRESIDENT
------------ ---------- ---------- ---------- ---------- ----------
--        30        950       1600                  2850           
--        10       1300                             2450       5000
--        20       1100                  3000       2975           