--DUMMY - LENGTHB(바이트 수), LENGTH(문자열의길이)
--DUAL테이블은 SYS소유의 테이블로 SCOTT계정도 사용할 수 있는 더미테이블
--DESC dual;
--이름    널?       유형          
------------------------------------
--DUMMY  (NULL)   VARCHAR2(1) 
--SELECT dummy
--FROM dual
--;
--DU
---
--X
SELECT
    LENGTH('한글'),
    LENGTHB('한글')
FROM dual
;
--LENGTH('한글') LENGTHB('한글')
-------------- -------------
--           2             6