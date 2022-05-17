-- REPLACE_Quiz01
-- emp테이블에서 부서번호가10인 이름 첫음 두 글자를 **로 표시
SELECT
    ename,
--  SUBSTR(ename,1,2),
    REPLACE(ename,SUBSTR(ename,1,2),'**') AS "REP"
FROM emp
WHERE deptno = 10
;
--ENAME      REP
------------ --------------------
--CLARK      **ARK               
--KING       **NG                
--MILLER     **LLER              
