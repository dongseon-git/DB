-- ex03) student테이블에서 1전공(deptno1)이 201번인 학과의 평균 몸무게보다
-- 몸무게가 많은 학생들의 이름과 몸무게를 출력하세요.
select * from student;
SELECT
    name,
    weight
FROM student
WHERE weight > (SELECT
                AVG( NVL(weight,0) )
                FROM student
                WHERE deptno1 = 201)
;
--NAME                 WEIGHT
-----------------------------
--James Seo                72
--Demi Moore               83
--Danny Glover             70
--Richard Dreyfus          72
--Tim Robbins              70
--Wesley Snipes            82
--Christian Slater         69
--Charlie Sheen            81