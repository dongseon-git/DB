-- CONCAT()함수 : ||
--두 개의 문자열 데이터를 하나의 데이터로 연결해 주는 역할
--SELECT
--    CONCAT(empno,ename),
--    CONCAT(empno,CONCAT(':',ename)) AS "CONCAT"
--FROM emp
--WHERE ename = 'SCOTT'
--;
--CONCAT(EMPNO,ENAME)  CONCAT                                             
-----------------------------------
--7788SCOTT            7788:SCOTT   
SELECT
    empno || ename AS "EMPNO_NAME",
    empno || ':' || ename AS "CONCAT"
FROM emp
WHERE ename = 'SCOTT'
;
--EMPNO_NAME        CONCAT       
-----------------------------------
--7788SCOTT         7788:SCOTT     
