SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION FUNC_DATE_KOR(
IN_KOR_DATE IN DATE
)
RETURN VARCHAR2
IS
V_KOR_DATE VARCHAR2(30);
BEGIN
SELECT TO_CHAR(IN_KOR_DATE,'YYYY"년"MM"월"DD"일"') INTO V_KOR_DATE
FROM DUAL;
RETURN V_KOR_DATE;
END;
/

--Function FUNC_DATE_KOR이(가) 컴파일되었습니다.

SELECT ENAME,FUNC_DATE_KOR(HIREDATE) AS HIREDATE
FROM EMP
WHERE EMPNO = 7369;

--HIREDATE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
------------------------------------------------------------
--SMITH      
--1980년12월17일 