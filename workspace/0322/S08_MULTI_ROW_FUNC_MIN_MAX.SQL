-- MAX,MIN()함수 : 최대값과 최소값을 구하는 함수
-- 원리는 데이터를 순서대로 정렬한다. 그 중에서 최대/최소값을 추출한다.

-- MAX([DISTINCT,ALL])
-- OVER(분석을 위한 여러 문법)

-- MIN([DISTINCT,ALL])
-- OVER(분석을 위한 여러 문법)

-- sort로 최소,최대를 구한다.
SELECT
    MAX(sal),
    MIN(sal)
FROM emp
;
--  MAX(SAL)   MIN(SAL)
------------ ----------
--      5000        800

-- 가장 최근에 입사한 사람, 마지막에 입사한 사람
SELECT
    MAX(hiredate), -- 입사연도가 큰 사람이 최근에 입사한 사람.
    MIN(hiredate)
FROM emp
;
--MAX(HIREDATE) MIN(HIREDATE)
----------      --------
--87/04/19      80/12/17