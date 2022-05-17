-- OUTER JOIN (아우터 조인)
-- ORACLE : UNION
-- ANSI : FULL OUTER JOIN

--Student 테이블과 Professor 테이블을 Join하여 학생이름과 지도교수 이름을 출력하세요.
--단 지도학생이 결정 안 된 교수 명단과 지도 교수가 결정 안된 학생 명단을 한꺼번에 출력

-- ORACLE JOIN : UNION
--지도 교수가 결정되지 않은 학생 포함해서 출력
SELECT
    t1.name AS stud_name,
    t2.name AS prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
UNION -- UNION ALL을 하게 되면 중복데이터 제거가 되지않아 UNION사용
--지도 학생이 결정되지 않은 교수 포함해서 출력
SELECT
    t1.name AS stud_name,
    t2.name AS prof_name
FROM student t1, professor t2
WHERE t1.profno(+) = t2.profno
;

-- ANSI FULL OUTER JOIN
SELECT
    t1.name AS stud_name,
    t2.name AS prof_name
FROM student t1 FULL OUTER JOIN professor t2
ON t1.profno = t2.profno
;
--STUD_NAME                      PROF_NAME           
-------------------------------- --------------------
--James Seo                      Audie Murphy        
--Rene Russo                     Winona Ryder        
--Sandra Bullock                 Julia Roberts       
--Demi Moore                     Meryl Streep        
--Danny Glover                   Nicole Kidman       
--Billy Crystal                  Angela Bassett      
--Nicholas Cage                  Michelle Pfeiffer   
--Micheal Keaton                 Nicole Kidman       
--Bill Murray                    Jodie Foster        
--Macaulay Culkin                Meryl Streep        
--Richard Dreyfus                Angela Bassett      
--Tim Robbins                    Winona Ryder        
--Wesley Snipes                  Susan Sarandon      
--Steve Martin                   Nicole Kidman       
--Daniel Day-Lewis               Jodie Foster        
--Danny Devito                                       
--Sean Connery                                       
--Christian Slater                                   
--Charlie Sheen                                      
--Anthony Hopkins                                    
--                               Holly Hunter        
--                               Andie Macdowell     
--                               Sharon Stone        
--                               Whoopi Goldberg     
--                               Meg Ryan            
--                               Emma Thompson       
--                               Jessica Lange 