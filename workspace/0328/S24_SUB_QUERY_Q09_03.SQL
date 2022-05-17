-- p263 Q3
-- 10번부서에 근무하는 사원 중 30번 부서에는 존재하지 않는 직책을 가진 사원들의 사원정보,
-- 부서정보를 출력하는 SQL문 작성
SELECT
    t1.empno,
    t1.ename,
    t1.job,
    t1.deptno,
    t2.dname,
    t2.loc
FROM emp t1,dept t2
WHERE t1.deptno = t2.deptno
AND t1.deptno = 10
AND t1.job NOT IN( SELECT job
                   FROM emp
                   WHERE deptno = 30)
;
--     EMPNO ENAME      JOB           DEPTNO DNAME          LOC          
------------ ---------- --------- ---------- -------------- -------------
--      7839 KING       PRESIDENT         10 ACCOUNTING     NEW YORK  