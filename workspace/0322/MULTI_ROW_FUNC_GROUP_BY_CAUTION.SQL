-- GROUP BY절 사용 주의사항.
-- 1. SELECT절에 사용된 그룹함수 이외의 컬럼이나 표현식은 반드시 GROUP BY절에 사용되어야 합니다.
--     그러지 않을 경우 에러(ORA-00979: GROUP BY 표현식이 아닙니다.)가 발생합니다.

-- GROUP BY절에 JOB 누락
--SELECT deptno,job,AVG(NVL(sal,0)) AS "AVG_SAL"
--FROM emp
--GROUP BY deptno --SELECT절에 사용한 컬럼 생략
--ORDER BY 1,2
--;
-- ORA-00979: GROUP BY 표현식이 아닙니다.

-- SELECT절에는 GROUP BY절 컬럼 생략 가능
--SELECT deptno,AVG(NVL(sal,0)) AS "AVG_SAL"  --GROUP BY절에 사용한 컬럼 생략
--FROM emp
--GROUP BY deptno,job
--ORDER BY 1,2 
--;
-- 하지만, GROUP BY절에 사용된 컬럼이라도 SELECT절에는 사용되지 않아도 된다.

-- 2. GROUP BY절에는 반드시 컬럼명이 사용되어야 하며,
--     컬럼 Alias는 사용하면 안된다.

--SELECT deptno AS "NO",job,AVG(NVL(sal,0)) AS "AVG_SAL"
--FROM emp
--GROUP BY NO,job        -- GROUP BY절에는 Alias 사용 불가.
--ORDER BY 1,2 
--;
