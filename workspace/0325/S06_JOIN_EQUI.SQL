-- 조인 조건과 검색조건
-- student 테이블을 조회하여 1전공(deptno1)이 101번인 학생들의 이름과
-- 각 학생들의 지도교수번호와 지도교수 이름을 출력하세요.

--ORACLE JOIN
SELECT
    t1.name AS stud_name,
    t2.name AS prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno
AND t1.deptno1 = 101
;

--ANSI JOIN
SELECT
    t1.name AS stud_name,
    t2.name AS prof_name
FROM student t1 JOIN professor t2
ON t1.profno = t2.profno
WHERE t1.deptno1 = 101 -- WHERE & AND중 하나쓰면 되지만 WHERE이 가독성이 높음
;