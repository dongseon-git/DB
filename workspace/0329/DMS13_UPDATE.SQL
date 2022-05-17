-- UPDATE : 테이블에 있는 데이터 변경하기

-- 서브쿼리를 이용한 데이터 수정

--데이터 변경 전 테이블 확인
SELECT dname,loc
FROM dept
WHERE deptno = 40;
--DNAME          LOC          
---------------- -------------
--OPERATIONS     BOSTON 

--데이터 변경 할 테이블 확인
SELECT * FROM dept_temp2
WHERE deptno = 40;
--DNAME       LOC    
------------- -------
--DATABASE    SEOUL

-- 서브쿼리를 사용하여 데이터 변경
UPDATE dept_temp2
   SET (dname,loc) = (SELECT dname,loc
                      FROM dept
                      WHERE deptno = 40)
WHERE deptno = 40;
--1 행 이(가) 업데이트되었습니다.

--변경한 데이터 확인
SELECT * FROM dept_temp2
WHERE deptno = 40;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        40 OPERATIONS     BOSTON    

-- 서브쿼리 이용은 한건씩 따로 적용해도 문제없다. SET, WHERE절 둘 다 사용가능
UPDATE dept_temp2
   SET dname = (SELECT dname
                FROM dept
                WHERE deptno = 40),
       loc =   (SELECT loc
                FROM dept
                WHERE deptno = 40)
WHERE deptno = 40;
--1 행 이(가) 업데이트되었습니다.