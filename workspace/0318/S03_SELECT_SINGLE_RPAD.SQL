-- RPAD()함수
--('문자열' 또는 컬럼, 자리수, 채울 문자) 우측부터 채운다
SELECT
    'Oracle',
    RPAD('Oracle',10,'*') AS "RPAD_01",
    RPAD('Oracle',10) AS "RPAD_02" -- 채울 문자를 생략하면 space로 채움 티가안남
FROM dual
;
