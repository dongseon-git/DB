-- TO_DATE()함수 : 문자데이터를 날짜 데이터로 변환
-- TO_DATE('문자열 데이터','인식될 날짜 형태')
--2018-07-13 23:56:28

SELECT STD_DATE,
    TRUNC(STD_DATE,'CC')   AS "TRUNC_CC", -- 연도끝 2자리 2018이면 2050이하이므로 2001처리
    TRUNC(STD_DATE,'YYYY') AS "TRUNC_YYYY", -- 2018-07-01기준으로 버림
    TRUNC(STD_DATE,'Q')    AS "TRUNC_Q", -- 각 분기의 두 번째 달의 16일 기준 1분기 1,2,3
    TRUNC(STD_DATE,'DDD')  AS "TRUNC_DDD", -- 해당 일의 정오(12:00) 기준 버림
    TRUNC(STD_DATE,'HH')   AS "TRUNC_HH" -- 해당 일의 시간을 기준으로 버림
FROM(
    SELECT TO_DATE('2018-07-13 23:56:28','YYYY-MM-DD HH24:MI:SS') AS "STD_DATE"
    FROM dual
);
--STD_DATE            TRUNC_CC            TRUNC_YYYY          
--------------------- ------------------- ------------------- 
--2018-07-13 23:56:28 2001-01-01 00:00:00 2018-01-01 00:00:00 

--TRUNC_Q             TRUNC_DDD           TRUNC_HH           
--------------------- ------------------- -------------------
--2018-07-01 00:00:00 2018-07-13 00:00:00 2018-07-13 23:00:00