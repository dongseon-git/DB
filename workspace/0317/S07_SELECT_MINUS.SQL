--MINUS 연산자 차집합의 순서가 중요하다
--SQL문결과값에서 다음 SQL 결과값을 차집합처리하여 출력
SELECT studno, name
FROM student
WHERE deptno1 = 101
MINUS
SELECT studno, name
FROM student
WHERE deptno2 = 201
;

--    STUDNO NAME   - deptno1
------------ ------------------------------
--      9411 James Seo                     
--      9511 Billy Crystal                 
--      9611 Richard Dreyfus               
--      9711 Danny Devito                  

--    STUDNO NAME   - deptno2
------------ ------------------------------
--      9411 James Seo                     
--      9512 Nicholas Cage   

-- deptno2 - deptno1
--    STUDNO NAME                          
------------ ------------------------------
--      9512 Nicholas Cage                 

-- deptno1 - deptno2
--    STUDNO NAME                          
------------ ------------------------------
--      9511 Billy Crystal                 
--      9611 Richard Dreyfus               
--      9711 Danny Devito 