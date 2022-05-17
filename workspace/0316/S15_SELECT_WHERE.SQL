--날짜는 '' 으로 감싸서 조회
-- 숫자 이외에는 전부 ''으로 감싸서 조회 해야함
SELECT 
    ename,
    hiredate
FROM emp
WHERE hiredate = '80/12/17'
;

--ENAME HIREDATE
-------------------------
--SMITH	80/12/17