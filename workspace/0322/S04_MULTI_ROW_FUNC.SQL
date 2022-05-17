-- 다중행 함수 : 여러행이 입력되어 하나의 행으로 결과가 반환된다.
-- 하나의 열에 출력 결과를 담는 다중행 함수

--SUM()함수를 사용하여 급여 합계 출력
SELECT sal
FROM emp
;
--SAL
------------
--1100
--800
--1600
--1250
--2975
--1250
--2850
--2450
--3000
--5000
--1500
--950
--3000
--1300

--급여 모두 더함
SELECT SUM(sal)
FROM emp
;
--SUM(SAL)
---------
--29025

SELECT
    ename,
    SUM(sal)
FROM emp
;
--ORA-00937: 단일 그룹의 그룹 함수가 아닙니다
--00937. 00000 -  "not a single-group group function"
--*Cause:    
--*Action:
--34행, 5열에서 오류 발생