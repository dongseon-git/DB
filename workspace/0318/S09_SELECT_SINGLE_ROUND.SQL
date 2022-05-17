-- ROUND() 함수 : 특정 위치에서 반올림
-- ROUND(숫자, 원하는 자릿수(선택))
-- 자릿수 생략시 소숫점 뒤는 출력하지않고 반올림
COL ROUND01 FOR 999999
SELECT
    ROUND(1234.5678) AS "ROUND01",
    ROUND(1234.5678,1) AS "ROUND02",
    ROUND(1234.5678,2) AS "ROUND03",
    ROUND(1234.5678,-1) AS "ROUND04", -- 실무에서 - 는 잘 사용하지않음
    ROUND(1234.5678,-2) AS "ROUND05"
FROM dual
;