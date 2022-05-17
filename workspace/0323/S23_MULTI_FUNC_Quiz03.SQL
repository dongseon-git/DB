-- p212 Q3
-- 사원들의 입사 연도(hiredate)를 기준으로 부서별로 몇 명이 입사했는지 출력하세요.

SELECT
--  EXTRACT( YEAR FROM hiredate ) AS "HIRE_YEAR",
    TO_CHAR(hiredate,'YYYY') AS "HIRE_YEAR",
    deptno,
    COUNT(*) AS "CNT"
FROM emp
GROUP BY TO_CHAR(hiredate,'YYYY'),deptno
ORDER BY HIRE_YEAR DESC, deptno 
;
--HIRE_YEAR      DEPTNO        CNT
------------ ---------- ----------
--1987               20          2
--1982               10          1
--1981               10          2
--1981               20          2
--1981               30          6
--1980               20          1