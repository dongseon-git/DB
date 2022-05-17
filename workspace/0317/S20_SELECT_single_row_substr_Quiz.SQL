-- SUBSTR 활용 예
-- student테이블에서 jumin컬럼을 사용해서 1전공이 101번인 학생들의 이름과 태어난 월일,
-- 생일하루 전 날짜를 출력하세요.
SELECT 
    name,
    SUBSTR(jumin,1,6) AS "Birthday",
    SUBSTR(jumin,1,6)-1 AS "Birthday -1" 
FROM student
WHERE deptno1 = 101
;
--NAME              Birthday    Birthday -1
-----------------------------------------------
--James Seo         751023      751022
--Billy Crystal     760123      760122
--Richard Dreyfus   771129      771128
--Danny Devito      780819      780818