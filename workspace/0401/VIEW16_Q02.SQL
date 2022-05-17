-- View Q2

--2. Inline View 를 사용하여 아래 그림과 같이 Student 테이블과 department 테이블을 
--사용하여 학과별로 학생들의 최대 키와 최대 몸무게, 학과이름을 출력하세요.

--SELECT * FROM student;
--STUDNO, NAME, ID, GRADE, JUMIN, BIRTHDAY, TEL, HEIGHT, WEIGHT, DEPTNO1, DEPTNO2, PROFNO
--SELECT * FROM department;
--DEPTNO, DNAME, PART, BUILD

SELECT
    A.dname,
    MAX(A.height) AS max_height,
    MAX(A.weight) AS max_weight
FROM( SELECT *
      FROM student t1 JOIN department t2
      ON t1.deptno1 = t2.deptno
)A
GROUP BY A.dname
;
--DNAME                           MAX_HEIGHT MAX_WEIGHT
--------------------------------- ---------- ----------
--Mechanical Engineering                 182         70
--Computer Engineering                   182         72
--Multimedia Engineering                 179         81
--Library and Information science        184         62
--Electronic Engineering                 177         83
--Software Engineering                   168         52

-- 강사님풀이
SELECT
    b.dname,
    a.max_height,
    a.max_weight
FROM (SELECT 
        t1.deptno1,
        MAX(t1.height) AS max_height,
        MAX(t1.weight) AS max_weight
      FROM student t1
      GROUP BY t1.deptno1
)a JOIN department b
ON a.deptno1 = b.deptno
;