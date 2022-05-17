-- NEXT_DAY()함수
-- NEXT_DAY(날짜 데이터, 요일문자)
-- 돌아오는 요일, 달의 마지막 날짜를 구하는 NEXT_DAT, LAST_DAY
-- 특정 날짜를 기준으로 돌아오는 요일의 날짜를 출력해주는 함수.
-- WINDOWS : NEXT_DAY(SYSDATE,'월요일')
-- UNIX : NEXT_DAY(SYSDATE, 'MON')
SELECT 
    SYSDATE,
    NEXT_DAY(SYSDATE,'월요일') AS "NEXT_DAY_월",
    NEXT_DAY(SYSDATE,'금요일') AS "NEXT_DAY_금",
    LAST_DAY(SYSDATE) AS "3MONTH_LAST_DAY"
FROM dual
;
--SYSDATE    NEXT_DAY_월  NEXT_DAY_금  3MONTH_LAST_DAY
------------ ---------- ---------- ----------
--2022-03-18 2022-03-21   2022-03-25   2022-03-31