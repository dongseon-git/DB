-- 날짜 데이터 + 숫자 : 날짜 데이터보다 숫자만큼 일수 이후의 날짜
-- 날짜 데이터 - 숫자 : 날짜 데이터보다 숫자만큼 일수 이전의 날짜
-- 날짜 데이터 - 날짜 데이터 : 두 날짜 데이터 간의 일수 차이

-- SYSDATE : 오라클 DB 서버에 놓인 OS의 현재 날짜와 시간을 제공
-- 시스템시간 : 절대로 오라클이 설치되어 있는 서버의 시간은 함부로 변경하면 안된다.
--SELECT SYSDATE
--FROM dual
--;
--SYSDATE 
----------
--22/03/18

-- 날짜 FORMAT변경 하기(일회성) : 설정파일에 넣지않으면 초기화됨
ALTER SESSION SET NLS_DATE_FORMAT = 'RRRR-MM-DD HH24:MI:SS';
--SYSDATE (FORMAT후 날짜)
---------------------
--2022-03-18:12:06:39

SELECT 
    SYSDATE + 1 AS "TOMORROW",
    SYSDATE     AS "CURR_DATE",
    SYSDATE - 1 AS "YESTERDAY"
FROM dual
;
--TOMORROW 내일        CURR_DATE 오늘      YESTERDAY 어제
--------------------- ------------------- -------------------
--2022-03-19:12:09:15 2022-03-18:12:09:15 2022-03-17:12:09:15
