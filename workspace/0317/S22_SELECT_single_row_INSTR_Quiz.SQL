--INSTR_Quiz01
-- student테이블의 tel컬럼을 사용하여 1전공(deptno1)이 201번인 학생의 이름과 전화번호,
-- ')'닫히는소괄호가 나오는 위치를 출력하세요.
SELECT
    name,
    tel,
    INSTR(tel,')')
FROM student
WHERE deptno1 = 201
;
--NAME                           TEL             INSTR(TEL,')')
-------------------------------- --------------- --------------
--Demi Moore                     02)6255-9875                 3
--Macaulay Culkin                02)312-9838                  3
--Wesley Snipes                  053)736-4981                 4
--Steve Martin                   02)6175-3945                 3
--Sean Connery                   02)381-5440                  3
--Christian Slater               031)345-5677                 4
