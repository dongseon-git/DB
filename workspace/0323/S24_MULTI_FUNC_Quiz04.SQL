-- p213 Q4
-- 추가수당(COMM)을 받는 사원 수와 받지 않는 사원 수를 출력하세요.

-- NVL2() 함수 사용
SELECT
    NVL2(comm,'O','X') AS "EXIST_COMM",
    COUNT(*) AS "CNT"
FROM emp
GROUP BY NVL2(comm,'O','X')
ORDER BY EXIST_COMM DESC
;
-- CASE문 사용
--SELECT EXIST_COMM,COUNT(*) AS "CNT"
--FROM(
--    SELECT CASE WHEN comm IS NOT NULL THEN '0'
--                ELSE 'X'
--           END AS "EXIST_COMM"
--    FROM emp
--)
--GROUP BY EXIST_COMM
--;

--EXIST_COMM   CNT
------------- ----
--X             10
--O              4