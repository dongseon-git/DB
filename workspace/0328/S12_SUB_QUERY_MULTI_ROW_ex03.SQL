-- 다중행 SUB QUERY 연습문제
-- ex)EMP2테이블과 dept2테이블을 조회하여 각 부서별 평균 연봉을 구하고 그 중에서 
-- 평균 연봉이 가장 적은 부서의 평균 연봉보다 적게 받는 직원들의 부서명, 직원명, 연봉을 출력
--select * from emp2; -- deptno
--select * from dept2; -- dcode
SELECT
    t2.dname,
    t1.name,
    TO_CHAR(t1.pay,'$999,999,999') AS salary
FROM emp2 t1, dept2 t2
WHERE t1.deptno = t2.dcode
AND t1.pay <ALL ( SELECT AVG( NVL(pay,0) ) OVER( PARTITION BY deptno)
                  FROM emp2)
ORDER BY 3
;
--SELECT
--    t2.dname,
--    t1.name,
--    TO_CHAR(t1.pay,'$999,999,999') AS salary
--FROM emp2 t1, dept2 t2
--WHERE t1.deptno = t2.dcode
--AND t1.pay <ALL ( SELECT AVG( NVL(pay,0) )
--                  FROM emp2
--                  GROUP BY deptno)
--ORDER BY 3
--;

--DNAME              NAME              SALARY       
-------------------- ----------------- -------------
--H/W Support Team   Harrison Ford       $20,000,000
--Sales4 Team        Tom Cruise          $20,000,000
--S/W Support Team   Clint Eastwood      $20,000,000
--Sales2 Team        Robert De Niro      $22,000,000
--Sales1 Team        JohnTravolta        $22,000,000
--Sales3 Team        Sly Stallone        $22,000,000