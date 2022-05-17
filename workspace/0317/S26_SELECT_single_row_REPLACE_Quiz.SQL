-- REPLACE_Quiz01
-- student테이블에서 아래와 같이 1전공(deptno01)이 101번인 학생들의 이름과
-- 주빈등록번호를 출력하되 주민등록번호의 뒤 7자리는 '-'과 '/'로 표시되게 출력하세요
SELECT
    name,
    jumin,
--  SUBSTR(jumin,-7),
    REPLACE(jumin,SUBSTR(jumin,-7),'-/-/-/-') AS "REP"    
FROM student
WHERE deptno1 = 101
;

--NAME                           JUMIN         REP                                                                                        
-------------------------------- ------------- --------------
--James Seo                      7510231901813 751023-/-/-/-                                                                              
--Billy Crystal                  7601232186327 760123-/-/-/-                                                                              
--Richard Dreyfus                7711291186223 771129-/-/-/-                                                                              
--Danny Devito                   7808192157498 780819-/-/-/- 