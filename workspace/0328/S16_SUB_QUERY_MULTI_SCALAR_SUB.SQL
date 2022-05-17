-- 스칼라 서브 쿼리 (Scalar Sub Query)
-- SELECT절에 오는 서브 쿼리로 한 번에 결과 1행씩 반환합니다.

-- 스칼라 서브 쿼리는 일반적으로 데이터의 종류나 양이 적은 코드 성격의 테이블에서
-- 적은 수의 데이터를 가져와야 할 경우 JOIN대신 사용하면 성능이 좋지만, 그런 상황이 
-- 아닌 경우 JOIN보다 성능이 떨어 진다.

-- SUB QUERY는 오는 위치에 따라 그 이름이 다르다.
-- 1. SEPECT(sub query) : 스칼라 서브쿼리
-- 2. FROM(sub query) : Inline뷰
-- 3. WHERE(sub query) : SUB QUERY

-- Scalar Sub Query
SELECT
    t1.name,
    (SELECT dname
     FROM dept2 t2
     WHERE t1.deptno = t2.dcode) AS dname
FROM emp2 t1
;
-- ORACLE JOIN
SELECT
    t1.name,
    t2.dname
FROM emp2 t1, dept2 t2
WHERE t1.deptno = t2.dcode
;
--NAME                           DNAME                         
-------------------------------- ------------------------------
--Kurt Russell                   President                     
--AL Pacino                      Management Support Team       
--Woody Harrelson                Management Support Team       
--Tommy Lee Jones                Financial Management Team     
--Gene Hackman                   General affairs               
--Kevin Bacon                    Engineering division          
--Hugh Grant                     H/W Support Team              
--Keanu Reeves                   S/W Support Team              
--Val Kilmer                     Business Department           
--Chris O'Donnell                Business Planning Team        
--Jack Nicholson                 Sales1 Team                   
--Denzel Washington              Sales2 Team                   
--Richard Gere                   Sales3 Team                   
--Kevin Costner                  Sales4 Team                   
--JohnTravolta                   Sales1 Team                   
--Robert De Niro                 Sales2 Team                   
--Sly Stallone                   Sales3 Team                   
--Tom Cruise                     Sales4 Team                   
--Harrison Ford                  H/W Support Team              
--Clint Eastwood                 S/W Support Team              