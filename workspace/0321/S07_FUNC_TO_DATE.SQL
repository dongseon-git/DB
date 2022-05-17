-- TO_DATE p165 실습 6-43
-- EMP테이블에서 1981년6월1일 이후 입사한 사원 정보 출력하기
SELECT 
    empno,
    ename,
    hiredate    
FROM emp
WHERE
    hiredate > TO_DATE('19810601','YYYYMMDD')
;
--     EMPNO ENAME      HIREDATE  
------------ ---------- ----------
--      7876 ADAMS      1987/02/21
--      7654 MARTIN     1981/09/28
--      7782 CLARK      1981/06/09
--      7788 SCOTT      1987/04/19
--      7839 KING       1981/11/17
--      7844 TURNER     1981/09/08
--      7900 JAMES      1981/12/03
--      7902 FORD       1981/12/03
--      7934 MILLER     1982/01/23

-- TO_DATE p166 1분복습
-- EMP테이블에서 1980년 10월 15일 이후에 입사한 사원을 출력하세요
SELECT 
    empno,
    ename,
    hiredate
FROM emp
WHERE hiredate > TO_DATE('19801015','YYYY-MM-DD')
;
--     EMPNO ENAME      HIREDATE  
------------ ---------- ----------
--      7876 ADAMS      1987/02/21
--      7369 SMITH      1980/12/17
--      7499 ALLEN      1981/02/20
--      7521 WARD       1981/02/22
--      7566 JONES      1981/04/02
--      7654 MARTIN     1981/09/28
--      7698 BLAKE      1981/05/01
--      7782 CLARK      1981/06/09
--      7788 SCOTT      1987/04/19
--      7839 KING       1981/11/17
--      7844 TURNER     1981/09/08
--      7900 JAMES      1981/12/03
--      7902 FORD       1981/12/03
--      7934 MILLER     1982/01/23