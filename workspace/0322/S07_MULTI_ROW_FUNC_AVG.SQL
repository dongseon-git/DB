-- AVG()함수 : 입력 데이터들의 평균 값을 구하는 함수
-- AVG([DISTINCT,ALL])
-- OVER(분석을 위한 여러 문법)
SELECT
    COUNT(comm),
    SUM(comm),
    AVG(comm)
FROM emp
;
-- NULL에 대한 데이터 누락 : 평균오류 
-- 해결방안 : AVG(NVL(comm,0))
--COUNT(COMM)  SUM(COMM)  AVG(COMM)
------------- ---------- ----------
--          4       2200        550

SELECT
    COUNT(*),
    SUM(comm),
    AVG(NVL(comm,0))
FROM emp
;
-- NULL에 대한 데이터 '0'으로 처리 후 평균출력
--  COUNT(*)  SUM(COMM) AVG(NVL(COMM,0))
------------ ---------- ----------------
--        14       2200       157.142857