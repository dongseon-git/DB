-- TRIM, LTRIM, RTRIM : 특정 문자를 지울 수 있는 함수
-- TROM([삭제옵션(선택)][삭제할 문자(선택)]FROM[원본 문자열 데이터(필수)])
-- 삭제옵션 : LEADING - 왼쪽에 있는 글자를 지움
--           TRAILING - 오른쪽에 있는 글자를 지움
--           BOTH - 양쪽에 글자를 모두 지움
-- 삭제옵션을 생략하면 Space(공백)모두 지움, 삭제할 문자를 생략하면 Space(공백) 지움
SELECT
    '[' || TRIM('_ _Oracle_ _') || ']' AS "TRIM",
    '[' || TRIM(LEADING  '_' FROM '_ _Oracle_ _') || ']' AS "LEADING",
    '[' || TRIM(TRAILING '_' FROM '_ _Oracle_ _') || ']' AS "TRAILING",
    '[' || TRIM(BOTH     '_' FROM '_ _Oracle_ _') || ']' AS "BOTH"
FROM dual
; 
--TRIM           LEADING       TRAILING      BOTH        
---------------- ------------- ------------- ------------
--[_ _Oracle_ _] [ _Oracle_ _] [_ _Oracle_ ] [ _Oracle_ ]