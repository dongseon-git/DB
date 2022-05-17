--SCOTT의 급여를 3000 -> 3500
UPDATE EMP_TRG
   SET SAL = 3600
   WHERE EMPNO = 7788;
--트리거 화요일 추가 : ORA-20000: 주말 사원정보 수정 불가(트리거발생)
