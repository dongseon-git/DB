-- student 테이블과 score테이블, hakjum테이블을 조회하여 
-- 학생의 이름과 점수와 학점을 출력하세요
-- score STUDNO, TOTAL
-- hakjum GRADE, MIN_POINT, MAX_POINT
-- student
--STUDNO, NAME, ID, GRADE, JUMIN, BIRTHDAY, TEL, HEIGHT, WEIGHT, DEPTNO1, DEPTNO2, PROFNO

-- ORACLE JOIN
SELECT
    t1.name AS stud_name,
    t2.total AS score,
    t3.grade AS credit
FROM  student t1, score t2, hakjum t3
WHERE t1.studno = t2.studno
AND t2.total BETWEEN t3.min_point AND t3.max_point
;

-- ANSI JOIN
SELECT
    t1.name AS stud_name,
    t2.total AS score,
    t3.grade AS credit
FROM  student t1 JOIN score t2
ON t1.studno = t2.studno
JOIN hakjum t3
ON t2.total >= t3.min_point 
AND t2.total <= t3.max_point
;
--STUD_NAME                           SCORE CREDIT
-------------------------------- ---------- ---
--James Seo                              97 A+ 
--Rene Russo                             78 C+ 
--Sandra Bullock                         83 B0 
--Demi Moore                             62 D  
--Danny Glover                           88 B+ 
--Billy Crystal                          92 A0 
--Nicholas Cage                          87 B+ 
--Micheal Keaton                         81 B0 
--Bill Murray                            79 C+ 
--Macaulay Culkin                        95 A0 
--Richard Dreyfus                        89 B+ 
--Tim Robbins                            77 C+ 
--Wesley Snipes                          86 B+ 
--Steve Martin                           82 B0 
--Daniel Day-Lewis                       87 B+ 
--Danny Devito                           91 A0 
--Sean Connery                           88 B+ 
--Christian Slater                       82 B0 
--Charlie Sheen                          83 B0 
--Anthony Hopkins                        84 B0