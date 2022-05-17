-- ORCLSTUDY

SELECT * FROM scott.temp;

INSERT INTO scott.temp VALUES ('TEST','FROM ORCLSTUDY');
--1 행 이(가) 삽입되었습니다.

SELECT * FROM scott.temp;
--COL1                 COL2                
---------------------- --------------------
--TEST                 FROM ORCLSTUDY 

COMMIT;
--커밋 완료.