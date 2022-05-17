-- p125 Q3
-- EMP테이블 사용하여 20번 30번부서에 근무하고있는 사원중 급여가 2000초과인 사원을
-- 집합연산자를 사용한 방식, 사용하지 않는 방식을 사용하여 사원번호,이름,급여,부서번호를
-- 출력하는 SQL문 작성
-- 집합연산자를 사용하지 않은 방식
-- 조회할 데이터가 여러개일때 IN 키워드 사용
-- WHERE 열이름 IN (데이터1,데이터2,....);
--SELECT 
--    t1.empno,
--    t1.ename,
--    t1.job,
--    t1.sal,
--    t1.deptno
--FROM emp t1
--WHERE t1.deptno IN (20,30)
--AND t1.sal > 2000
--;

-- 집합연산자를 사용한 방식
-- SELECT 두개를 하나로 묶을땐 UNION키워드 사용
SELECT 
    t1.empno,
    t1.ename,
    t1.job,
    t1.sal,
    t1.deptno
FROM emp t1
WHERE t1.deptno = 30
AND t1.sal > 2000
UNION
SELECT 
    t1.empno,
    t1.ename,
    t1.job,
    t1.sal,
    t1.deptno
FROM emp t1
WHERE t1.deptno = 20
AND t1.sal > 2000
;
--     EMPNO ENAME      JOB              SAL     DEPTNO
------------ ---------- --------- ---------- ----------
--      7566 JONES      MANAGER         2975         20
--      7698 BLAKE      MANAGER         2850         30
--      7788 SCOTT      ANALYST         3000         20
--      7902 FORD       ANALYST         3000         20
