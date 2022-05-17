-- 테이블에 데이터 추가하는 INSERT문

-- INSERT문 오류 
-- 컬럼 수와 데이터 수 일치 해야한다.
INSERT INTO dept_temp(deptno,dname,loc)
VALUES (50,'DATABASE');
--오류 보고 -
--SQL 오류: ORA-00947: 값의 수가 충분하지 않습니다
--00947. 00000 -  "not enough values"

INSERT INTO dept_temp(deptno,dname)
VALUES (50,'DATABASE','SEOUL');
--오류 보고 -
--SQL 오류: ORA-00913: 값의 수가 너무 많습니다
--00913. 00000 -  "too many values"

-- 숫자가 입력될 자리에 문자 입력(데이터 타입이 다를 경우)
INSERT INTO dept_temp(deptno,dname,loc)
VALUES ('50','DATABASE','082');
--오류 보고 -
--ORA-01722: 수치가 부적합합니다