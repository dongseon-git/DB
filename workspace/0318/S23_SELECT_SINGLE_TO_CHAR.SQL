-- TO_CHAR : 날짜, 숫자 데이터를 문자로 변환
-- TO_CHAR(날짜데이터, '출력되길 원하는 문자형태')
-- 년도 YYYY : 연도 4자리 / RRRR : 2000년 이후 Y2K버그로 인해 등장한 연도 4자리 표기법
--   월   MM : 월 2자리 숫자 / MON : 유닉스용 오라클에서 월 약자(언어별 월 이름 약자)
--   일   DD : 일 2자리 숫자 / DAY : 요일에 해당하는 명칭 표기
-- 시간 HH24 : 하루를 24시간으로 표기 / HH : 하루를 12시간으로 표기 / MI : 분 / SS : 초
-- FORMAT형식은 대,소문자 구분을 하지 않음
-- 각각의 형식을 확인 가능함. TO_CHAR(SYSTEM,YYYY) 등
SELECT SYSDATE,
    TO_CHAR(SYSDATE,'YYYY/MM/DD HH24:MI:SS') AS "TO_CHAR_FORMAT",
    TO_CHAR(SYSDATE,'yyyy/mm/dd hh24:mi:ss') AS "TO_CHAR_small letter",
    TO_CHAR(SYSDATE, 'MONTH') AS "MONTH", -- 언어별 월 이름 전체 : MONTH
    TO_CHAR(SYSDATE, 'DDD') AS "DDD" -- 1년 중 며칠 (1~366) : DDD
FROM dual
;
--SYSDATE             TO_CHAR_FORMAT      TO_CHAR_small lette MONTH    DDD
--------------------- ------------------- ------------------- -------- ---
--2022-03-18 15:31:40 2022/03/18 15:31:40 2022/03/18 15:31:40 3월      077