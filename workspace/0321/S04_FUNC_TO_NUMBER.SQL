-- TO_NUMBER함수 : 문자 데이터를 숫자 데이터로 변환
-- '1200' : 숫자처럼 생긴 문자 , '1,200' : 숫자처럼 생긴 문자아님 , 때문에 변환이 안됨
SELECT
    1300 - '1500',
    '1300' + 1500,
    '1300' - '1500'
FROM dual
;
--1300-'1500' '1300'+1500 '1300'-'1500'
------------- ----------- -------------
--       -200        2800          -200
--문자의 경우
SELECT
    '1,300' - '1,500', -- 수치가 부적합합니다( , 들어가 있기 때문에 문자)
    1,500 - '1300' -- 수치가 부적합합니다( , 들어가 있기 때문에 문자)
FROM dual
;
--ORA-01722: 수치가 부적합합니다
--01722. 00000 -  "invalid number"
--*Cause:    The specified number was invalid.
--*Action:   Specify a valid number.