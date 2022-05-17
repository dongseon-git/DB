-- 사원들의 급여 정보가 들어 있는 salgrade테이블
-- EMP테이블에서 관리하는 사원들의 급여 정보 관리

--DESC salgrade;

--이름     널?     유형     
------------------------  NUMBER뒤에 숫자가 없으면 MAX 크기 FULL
--GRADE           NUMBER  급여등급
--LOSAL           NUMBER  급여등급의 최소 급여액
--HISAL           NUMBER  급여등급의 최대 급여액

SELECT grade,
       hisal,
       losal
FROM salgrade
;
--GRADE   HISAL     LOSAL
-----------------------------
--  1     1200	    700
--  2     1400	    1201
--  3     2000	    1401
--  4     3000	    2001
--  5     9999	    3001
