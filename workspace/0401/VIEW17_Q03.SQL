-- View Q3

--3.Student테이블과 department테이블을 사용하여 학과이름, 학과별최대키, 학과별로
--가장 키가 큰 학생들의 이름과 키를 Inline View를 사용하여 아래와 같이 출력하세요.

--SELECT * FROM student;
--STUDNO, NAME, ID, GRADE, JUMIN, BIRTHDAY, TEL, HEIGHT, WEIGHT, DEPTNO1, DEPTNO2, PROFNO
--SELECT * FROM department;
--DEPTNO, DNAME, PART, BUILD

SELECT A.dname,A.max_height,B.name,B.height
FROM ( SELECT t2.deptno,t2.dname, MAX(t1.height) AS max_height
       FROM student t1 JOIN department t2
       ON t1.deptno1 = t2.deptno
       GROUP BY t2.deptno, t2.dname
)A JOIN student B
ON A.deptno = B.deptno1
AND A.max_height = B.height
;
--DNAME                            MAX_HEIGHT NAME              HEIGHT
---------------------------------- ---------- ------------------------
--Software Engineering                    168 Sandra Bullock       168
--Electronic Engineering                  177 Demi Moore           177
--Mechanical Engineering                  182 Danny Glover         182
--Computer Engineering                    182 Richard Dreyfus      182
--Library and Information science         184 Daniel Day-Lewis     184
--Multimedia Engineering                  179 Charlie Sheen        179
