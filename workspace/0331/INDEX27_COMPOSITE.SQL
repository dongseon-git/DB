-- 결합 인덱스(Composite INDEX)
--    WHERE절에 조건 컬럼이 2개 이상 AND로 연결되어 함께 사용되는 경우 사용.
--    아주 많이 사용하는 인덱스, 단 잘못 생성하게 되면 성능에 아주 나쁜 영향을 준다.

--1. EMP테이블에 인원 100명, 그 중에 남자(M) 50명, 여자(F) 50명이라 가정
--    남자 중에 SMITH인 사람이 단 2명 있다고 가정.
--    
--    이름을 찾고 성별을 찾는다. (성능 우수)
--    
--    성별을 찾고 이름을 찾으면 성능 저하!!

-- 문법)
--    CREATE INDEX 인덱스명
--    ON 테이블 이름(컬럼 ASC|DESC, 컬럼 ASC|DESC);
--    
-- ex)									
--	SELECT ename, sal								
--	FROM emp								
--	WHERE ename ='SMITH'								
--	AND sex ='M'								
--									
--	CREATE INDEX idx_emp_comp								
--	ON emp( ename,sex)
--    
-- 컬럼의 배치 순서 컬럼이 2개인 경우 2!(2*1)가지의 경우의 수 발생

-- emp테이블에 ename,job을 결합한 인덱스를 생성.
CREATE INDEX idx_emp_comp
ON emp ( ename ASC, job DESC);
--Index IDX_EMP_COMP이(가) 생성되었습니다.

ALTER SESSION SET STATISTICS_LEVEL = ALL;
--/*+ INDEX_ASC(t1 IDX_EMP_COMP) */ *
SELECT *
FROM emp t1
WHERE t1.ename > '0';

-- sql_id,child_number, 출력하고자하는 포맷,
-- NULL 해당 세션의 마지막 쿼리에 해당하는 sql_id,child_number
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));