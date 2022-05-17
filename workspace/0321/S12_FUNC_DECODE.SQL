-- DECODE()함수
-- 기준데이터를 지정한 후 해당 데이터값에 따라 다른 결과값을 내보낸다.

-- A가B이면 '1' 아니면 '2' 출력
-- 유형2) DECOED(A,B,'1','2')

-- ex) professor 테이블에서 학과번호와 교수명, 학과명을 출력하되 deptno가 101번인
--   교수만 학과명을 'Computer Engineering'으로 출력하고 101이 아닌 교수들은
--   학과명에 'ETC'를 출력하시오.
SELECT
    deptno,
    name,
    DECODE(deptno,101,'Computer Engineeriong','ETC') AS DNAME
-- NULL은 대,소문자 구분하지않음.
FROM professor
;