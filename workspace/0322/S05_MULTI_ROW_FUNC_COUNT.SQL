-- COUNT()함수 : 데이터의 개수를 구해주는 함수
-- COUNT([DISTINCT,ALL])
-- OVER(분석을 위한 여러 문법)

-- * NULL 처리
-- NULL을 포함하여 출력 : *
-- 컬럼 이름을 사용하면 NULL 미포함!

-- COUNT(*) : NULL 포함
-- COUNT(comm) : NULL 미포함
SELECT
    COUNT(*),
    COUNT(comm)
FROM emp
;
--  COUNT(*) COUNT(COMM)
------------ -----------
--        14           4