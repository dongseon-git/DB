-- 테이블에 데이터 추가하는 INSERT문
-- 문법)
--      INSERT INTO table[(컬럼1,컬럼2,컬럼n,...)]
--      VALUES (value 1, value 2, value n, ...);

--테이블 구조 확인
--DESC dept_temp;

-- 부서번호:50
-- 부서명:'DATABASE'
-- 지역:'SEOUL'
INSERT INTO dept_temp(deptno,dname,loc)
VALUES (50,'DATABASE','SEOUL');
-- 1 행 이(가) 삽입되었습니다.

--확정하기
COMMIT;
-- 커밋 완료 - 커밋을 완료하면 다른사람들이 내가 추가한 데이터를 볼 수 있음.

-- 삽입한 데이터 확인
SELECT * FROM dept_temp;

--데이터 되돌리기
ROLLBACK;
-- 롤백 완료 - 커밋 하기 직전까지의 데이터 되돌리기

--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON       
--        50 DATABASE       SEOUL 