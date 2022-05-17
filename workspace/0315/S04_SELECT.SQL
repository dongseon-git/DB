-- 회사에 부서 정보가 들어 있는 dept 테이블
-- 회사를 구성하는 부서 데이터를 관리하는 테이블
--DESC dept;

--이름     널여부    유형            설명
--------  --------  ------------   ------------  
--DEPTNO  NOT NULL  NUMBER(2)      부서번호
--DNAME             VARCHAR2(14)   부서명
--LOC               VARCHAR2(13)   부서 위치 지역

SELECT deptno,
       dname,
       loc
FROM dept
;
--부서번호   부서명         부서가 위치한 지역
--DEPTNO    DNAME         LOC
--------    -----------   ----------------
--10	    ACCOUNTING    NEW YORK
--20	    RESEARCH	  DALLAS
--30	    SALES	      CHICAGO
--40	    OPERATIONS	  BOSTON