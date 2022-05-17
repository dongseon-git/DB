--TO_DATE함수 : 문자 데이터를 날짜 데이터로 변환
--TO_DATE('문자열 데이터')
--TO_DATE('문자열 데이터','인식될 날짜형태')
--인식될 날짜형태(YYYYMMdd 의 경우 중간의 구분자는 어떤것이든 상관없다. 가독성)
--날짜 FORMAT 1회성 로그아웃 후 로그인 시 다시 초기화 되어있음.
ALTER SESSION SET NLS_DATE_FORMAT = 'RRRR/MM/DD';
SELECT
    SYSDATE,
    TO_DATE('2022/03/21') AS "TO_DATE01",
    TO_DATE('2022-03-21','yyyy-mm-dd') AS "TO_DATE02",
    TO_DATE('20220321','YYYYMMDD') AS "TO_DATE03"
FROM dual
;
--SYSDATE    TO_DATE01  TO_DATE02  TO_DATE03 
------------ ---------- ---------- ----------
--2022/03/21 2022/03/21 2022/03/21 2022/03/21