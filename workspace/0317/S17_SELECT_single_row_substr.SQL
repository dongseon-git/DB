--SUBSTR() 문자열을 추출하는 함수
--주민등록 번호 중 생년월일 앞자리만 필요하거나, 전화번호 마지막 네 자리 숫자만 추출할 경우
--SUBSTR('문자열'또는 컬럼, 시작위치, 추출길이) :문자열에 시작위치부터 추출 길이만큼 추출
--SUBSTR('문자열'또는 컬럼, 시작위치) :문자열에 시작 위치부터 끝까지 추출
SELECT
    job,
    SUBSTR(job,1,2),
    SUBSTR(job,3,2),
    SUBSTR(job,5)
FROM emp
;
-- CLERK
-- 12345
--JOB       SUBSTR(JOB,1,2) SUBSTR(JOB,3,2) SUBSTR(JOB,5)
----------- -- -- -----
--CLERK     CL              ER              K    
--CLERK     CL              ER              K    
--SALESMAN  SA              LE              SMAN 
--SALESMAN  SA              LE              SMAN 
--MANAGER   MA              NA              GER  
--SALESMAN  SA              LE              SMAN 
--MANAGER   MA              NA              GER  
--MANAGER   MA              NA              GER  
--ANALYST   AN              AL              YST  
--PRESIDENT PR              ES              IDENT
--SALESMAN  SA              LE              SMAN 
--CLERK     CL              ER              K    
--ANALYST   AN              AL              YST  
--CLERK     CL              ER              K  