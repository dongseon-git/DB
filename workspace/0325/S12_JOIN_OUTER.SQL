-- OUTER JOIN (아우터 조인) : 한 쪽 테이블에는 데이터가 있고,
-- 다른 한 쪽 테이블에는 데이터가 없는 경우,
-- 데이터가 있는 쪽 내용을 모두 출력하게 하는 방법 (성능이 매우 안좋으므로 사용시 고려)
-- 사용방법 : LEFT OUTER JOIN -> WHERE TABLE1.COL1 = TABLE2.COL1(+)
--           RIGHT OUTER JOIN -> WHERE TABLE1.COL1(+) = TABLE2.COL1

-- student 테이블과 professor테이블을 Join하여 학생이름과 지도교수 이름을 출력하세요.
-- 단 지도학생이 결정되지 않은 교수의 명단도 함께 출력하세요

-- ORACLE OUTER JOIN
-- WHERE 조건 절에 데이터가 없는쪽에 (+)를 붙힌다.
SELECT
    t1.name AS stud_name,
    t2.name AS prof_name
FROM student t1, professor t2
WHERE t1.profno(+) = t2.profno
;

-- ANSI OUTER JOIN
-- 조인 조건에 데이터가 있는쪽을 가르치면 된다.
SELECT
    t1.name AS stud_name,
    t2.name AS prof_name
FROM student t1 RIGHT OUTER JOIN professor t2
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
--                               Holly Hunter        
--                               Andie Macdowell     
--                               Sharon Stone        
--                               Whoopi Goldberg     
--                               Meg Ryan            
--                               Emma Thompson       
--                               Jessica Lange