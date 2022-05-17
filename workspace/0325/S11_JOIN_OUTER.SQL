-- OUTER JOIN (아우터 조인)
-- EQUI, NONE EQUI는 조회하려는 데이터들이 JOIN에 참여하는 모든 테이블에
-- 데이터가 존재하는 경우에는 결과 값을 출력

-- 반대로 OUTER JOIN은 한 쪽 테이블에는 데이터가 있고,
-- 다른 한 쪽 테이블에는 데이터가 없는 경우,
-- 데이터가 있는 쪽 내용을 모두 출력하게 하는 방법 (성능이 매우 안좋으므로 사용시 고려)
-- 사용방법 : LEFT OUTER JOIN -> WHERE TABLE1.COL1 = TABLE2.COL1(+)
--           RIGHT OUTER JOIN -> WHERE TABLE1.COL1(+) = TABLE2.COL1

-- Student 테이블과 Professor 테이블을 Join하여 학생이름과 지도교수 이름을 출력하세요.
-- 단 지도교수가 결정되지 않은 학생의 명단도 함께 출력하세요.

-- ORACLE OUTER JOIN
-- WHERE 조건 절에 데이터가 없는쪽에 (+)를 붙힌다.
SELECT
    t1.name AS stud_name,
    t2.name AS prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
;

-- ANSI OUTER JOIN
-- 조인 조건에 데이터가 있는쪽을 가르치면 된다.
SELECT
    t1.name AS stud_name,
    t2.name AS prof_name
FROM student t1 LEFT OUTER JOIN professor t2
ON t1.profno = t2.profno
;
--STUD_NAME                      PROF_NAME           
-------------------------------- --------------------
--James Seo                      Audie Murphy        
--Billy Crystal                  Angela Bassett      
--Richard Dreyfus                Angela Bassett      
--Rene Russo                     Winona Ryder        
--Tim Robbins                    Winona Ryder        
--Nicholas Cage                  Michelle Pfeiffer   
--Sandra Bullock                 Julia Roberts       
--Demi Moore                     Meryl Streep        
--Macaulay Culkin                Meryl Streep        
--Wesley Snipes                  Susan Sarandon      
--Danny Glover                   Nicole Kidman       
--Micheal Keaton                 Nicole Kidman       
--Steve Martin                   Nicole Kidman       
--Bill Murray                    Jodie Foster        
--Daniel Day-Lewis               Jodie Foster        
--Danny Devito                                       
--Sean Connery                                       
--Christian Slater                                   
--Charlie Sheen                                      
--Anthony Hopkins                               