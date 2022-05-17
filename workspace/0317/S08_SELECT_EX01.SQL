-- p125 Q1
--EMP테이블을 사용하여 사원이름이 S로 끝나는 사원 데이터를 모두 출력하는 SQL문 작성

SELECT 
    t1.empno,
    t1.ename,
    t1.job,
    t1.mgr,
    t1.hiredate,
    t1.sal,
    t1.comm,
    t1.deptno
FROM emp t1
WHERE t1.ename LIKE '%S'
;
--EMPNO ENAME  JOB      MGR HIREDATE      SAL    COMM     DEPTNO
---------------------------------------------- ---------- ----------
-- 7876 ADAMS  CLERK    7788 87/02/21    1100             20
-- 7566 JONES  MANAGER  7839 81/04/02    2975             20
-- 7900 JAMES  CLERK    7698 81/12/03     950             30


