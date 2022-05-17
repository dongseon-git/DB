-- 테이블에 데이터 추가하는 INSERT문

-- 테이블에 NULL데이터 입력
--  -NULL을 명시적으로 명기

-- 부서번호:70
-- 부서명:'WEB'
-- 지역:NULL

-- NULL로 명기하는 것이 명확함!!!
INSERT INTO dept_temp VALUES (70,'WEB',NULL);

SELECT * FROM dept_temp;

-- 부서번호:80
-- 부서명:'MOBILE'
-- 지역:''  -문자열 날짜에 NULL입력

-- 컬럼의 순서를 바꿔도 상관없다. 단, 밸류입력 순서를 같게한다.
INSERT INTO dept_temp(deptno,loc,dname) VALUES (80,'','MOBILE');

SELECT * FROM dept_temp;

-- 부서번호:90
-- 부서명:NULL
-- 지역:'INCHEON'

-- 입력할 컬럼만 입력 해 두면 밸류의 개수만 같으면 NULL처리 하며 입력 가능.
INSERT INTO dept_temp(deptno,loc)VALUES(90,'INCHEON');

SELECT * FROM dept_temp;