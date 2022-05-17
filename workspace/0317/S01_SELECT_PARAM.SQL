--사용자에게 조건을 입력 받아서 조건 값에 맞는 값을 출력하기
-- param
SELECT empno,
       ename,
       sal
FROM emp
WHERE empno = &empno
;

--empno의 값을 입력하시오 : 7902
--WHERE empno = 7902
--     EMPNO ENAME             SAL
------------ ---------- ----------
--      7902 FORD             3000