-- 날짜의 반올림, 버림을 하는 ROUND, TRUNC
-- ROUND()
-- 정오를 기준으로 상품접수가 오전에 되었으면 당일 배송,
-- 그렇지 않으면 익일 배송
-- TRUNC()
-- 원서접수 의 경우
--ALTER SESSION SET NLS_DATE_FORMAT = 'RRRR-MM-DD HH24:MI:SS';
SELECT
    SYSDATE,
    ROUND(SYSDATE) AS "ROUND_SYSDATE",
    TRUNC(SYSDATE) AS "TRUNC_SYSDATE"
FROm dual
;
--SYSDATE             ROUND_SYSDATE       TRUNC_SYSDATE      
--------------------- ------------------- -------------------
--2022-03-18 14:18:43 2022-03-19 00:00:00 2022-03-18 00:00:00