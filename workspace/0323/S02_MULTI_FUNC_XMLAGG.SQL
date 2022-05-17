-- XMLAGG XML함수(10G버전)
-- 만약 저장된 4,000바이트가 넘는 출력 결과가 나올 수 있다면 그 형태는
-- VARCHAR2, CLOB return varchar2 인 경우

-- XMLELEMENT : <NAME ATTR=1234></NAME> -XML 생성
--              <NAME>, SCOTT </NAME>

-- XMLAGG
-- 10 <NAME>,CLARK</NAME><NAME>,KING</NAME><NAME>,MILLER</NAME>
-- <NAME ATTR=1234></NAME><NAME ATTR=1234></NAME><NAME ATTR=1234></NAME>

-- .EXTRACT('//text()').getStringVal()
-- 10 ,CLARK,KING,MILLER -> SUBSTR 10  CLARK,KING,MILLER

-- EXTRACT('//text()') : 문자(text)로 추출
-- getStringVal() : VARCHAR2 로 추출
-- getClobVAL() : clob 로 추출
col XML_ENAME for a30
SELECT
    deptno,
    SUBSTR(XMLAGG(XMLELEMENT(name,',',ename) ORDER BY hiredate) 
    .EXTRACT('//text()').getStringVal(),2) AS "XML_ENAME"
FROM emp
GROUP BY deptno
;