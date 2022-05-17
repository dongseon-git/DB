--INTERSECT : 두 집합의 교집합 결과를 출력 및 정렬
SELECT studno, name
FROM student
WHERE deptno1 = 101
INTERSECT
SELECT studno, name
FROM student
WHERE deptno2 = 201
;
--    STUDNO NAME                          
------------ -----------
--      9411 James Seo  
