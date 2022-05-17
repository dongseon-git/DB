-- TO_CHAR : 날짜, 숫자 데이터를 문자로 변환
-- 특정 언어에 맞춰서 날짜 출력하기
-- TH_CHAR(날짜데이터,'출력되길 원하는 문자형태','NLS_DATE_LANGUAGE = language')
SELECT SYSDATE,
    TO_CHAR(SYSDATE,'MM') AS "MM",
    TO_CHAR(SYSDATE,'MON','NLS_DATE_LANGUAGE = KOREAN') AS "KOREAN",
    TO_CHAR(SYSDATE,'MON','NLS_DATE_LANGUAGE = JAPANESE') AS "JAPANESE",
    TO_CHAR(SYSDATE,'MON','NLS_DATE_LANGUAGE = ENGLISH') AS "ENGLISH", -- 약어
    TO_CHAR(SYSDATE,'MONTH','NLS_DATE_LANGUAGE = ENGLISH') AS "ENGLISH_MONTH"
FROM dual
;
--SYSDATE               MM  KOREAN   JAPANESE   ENGLISH      ENGLISH_MONTH
---------------------   --  -------- --------   ------------ --------------
--2022-03-18 15:39:15   03  3월      3月         MAR          MARCH         

-- p160 실습 6-36 여러 언어로 날짜(요일) 출력하기
SELECT SYSDATE,
    TO_CHAR(SYSDATE,'MM') AS "MM",
    TO_CHAR(SYSDATE,'DD') AS "DD",
    TO_CHAR(SYSDATE,'DY', 'NLS_DATE_LANGUAGE = KOREAN')   AS "KOREAN", -- 약어
    TO_CHAR(SYSDATE,'DAY','NLS_DATE_LANGUAGE = KOREAN')   AS "KOREAN_DAY",
    TO_CHAR(SYSDATE,'DY', 'NLS_DATE_LANGUAGE = JAPANESE') AS "JAPANESE", -- 약어
    TO_CHAR(SYSDATE,'DAY','NLS_DATE_LANGUAGE = JAPANESE') AS "JAPANESE_DAY",
    TO_CHAR(SYSDATE,'DY', 'NLS_DATE_LANGUAGE = ENGLISH')  AS "ENGLISH", -- 약어
    TO_CHAR(SYSDATE,'DAY','NLS_DATE_LANGUAGE = ENGLISH')  AS "ENGLISH_DAY"
FROM dual
;
--SYSDATE     MM DD     KOREAN_DAY      JAPANESE_DAY     ENGLISH_DAY
------------------------------------------------------------------------
--2022-03-18  03 18     금     금요일    金       金曜日    FRI    FRIDAY
