-- TO_DATE()함수 : 문자데이터를 날짜 데이터로 변환
-- TO_DATE('문자열 데이터','인식될 날짜 형태')
--ROUND_TO_DATE
--2018-07-13 23:56:28

SELECT STD_DATE,
    ROUND(STD_DATE,'CC')   AS "ROUND_CC", -- 연도끝 2자리 2018이면 2050이하이므로 2001처리
    ROUND(STD_DATE,'YYYY') AS "ROUND_YYYY", -- 2018-07-01기준으로 반올림
    ROUND(STD_DATE,'Q')    AS "ROUND_Q", -- 각 분기의 두 번째 달의 16일 기준 1분기 1,2,3
    ROUND(STD_DATE,'DDD')  AS "ROUND_DDD", -- 해당 일의 정오(12:00) 기준 반올림
    ROUND(STD_DATE,'HH')   AS "ROUND_HH" -- 해당 일의 시간을 기준으로 반올림
FROM(
    SELECT TO_DATE('2018-07-13 23:56:28','YYYY-MM-DD HH24:MI:SS') AS "STD_DATE"
    FROM dual
);
--STD_DATE            ROUND_CC            ROUND_YYYY          
--------------------- ------------------- ------------------- 
--2018-07-13 23:56:28 2001-01-01 00:00:00 2019-01-01 00:00:00

--ROUND_Q             ROUND_DDD           ROUND_HH           
--------------------- ------------------- -------------------
--2018-07-01 00:00:00 2018-07-14 00:00:00 2018-07-14 00:00:00