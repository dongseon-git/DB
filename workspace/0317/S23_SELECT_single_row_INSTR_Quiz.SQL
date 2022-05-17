--INSTR_Quiz02
-- student테이블의 tel컬럼을 사용하여 1전공(deptno1)이 
-- 201번인 학생의 이름과 지역번호를 출력하세요
SELECT
    name,
    tel,
--  INSTR(tel,')'),
    SUBSTR(tel,1,INSTR(tel,')')-1) AS "AREA_CODE"

FROM student
WHERE deptno1 = 201
;
--NAME                           TEL             AREA_CODE      
-------------------------------- --------------- ---------------
--Demi Moore                     02)6255-9875    02             
--Macaulay Culkin                02)312-9838     02             
--Wesley Snipes                  053)736-4981    053            
--Steve Martin                   02)6175-3945    02             
--Sean Connery                   02)381-5440     02             
--Christian Slater               031)345-5677    031  