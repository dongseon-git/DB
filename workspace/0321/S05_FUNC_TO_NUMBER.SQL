--TO_NUMBER함수
--TO_MONBER('문자열 데이터','인식될 숫자형태')
--문자열을 지정한 형태의 숫자로 인식하여 숫자 데이터로 변환
SELECT
    TO_NUMBER('1,300','999,999') - TO_NUMBER('1,500','999,999')
FROM dual
;
--TO_NUMBER('1,300','999,999')-TO_NUMBER('1,500','999,999')
-----------------------------------------------------------
--                                                     -200