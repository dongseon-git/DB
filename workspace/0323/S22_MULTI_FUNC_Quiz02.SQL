-- p212 Q2
-- 같은 직책(JOB)에 종사하는 사원이 3명 이상인 직책과 인원수를 출력하세요.

SELECT
    job,
    COUNT(*)
FROM emp
GROUP BY job
HAVING COUNT(*) >= 3
;
--JOB         COUNT(*)
----------- ----------
--CLERK              4
--SALESMAN           4
--MANAGER            3