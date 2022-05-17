-- UPPER : 소문자를 대문자로
-- LOWER : 대문자를 소문자로
-- INITCAP : 첫 글자만 대문자 나머지는 소문자
SELECT 
    ename,
    LOWER(ename) AS lower_name,
    UPPER(ename) AS upper_name,
    INITCAP(ename) AS initcap_name
FROM emp;

--ENAME      LOWER_NAME UPPER_NAME INITCAP_NA
------------ ---------- ---------- ----------
--ADAMS      adams      ADAMS      Adams     
--SMITH      smith      SMITH      Smith     
--ALLEN      allen      ALLEN      Allen     
--WARD       ward       WARD       Ward      
--JONES      jones      JONES      Jones     
--MARTIN     martin     MARTIN     Martin    
--BLAKE      blake      BLAKE      Blake     
--CLARK      clark      CLARK      Clark     
--SCOTT      scott      SCOTT      Scott     
--KING       king       KING       King      
--TURNER     turner     TURNER     Turner    
--JAMES      james      JAMES      James     
--FORD       ford       FORD       Ford      
--MILLER     miller     MILLER     Miller

--UPPER함수로 문자열 비교허기(사원이름 SCOTT인 데이터찾기)
SELECT *
FROM emp
WHERE ename = 'scott'
;
-- 선택된 레코드가 없습니다.