-- LPAD()함수
--('문자열' 또는 컬럼, 자리수, 채울 문자) 좌측부터 채운다

SELECT 
    'Oracle',
    LPAD('Oracle',10,'#') AS "LPAD_01",
    LPAD('Oracle',10) AS "LPAD_02" -- 채울 문자를 생략하면 space로 채움
FROM dual
;
--'ORACLE'  LPAD_01     LPAD_02   
----------  ----------  ----------
--Oracle    ####Oracle      Oracle