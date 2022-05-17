-- 정규식(Regular Expression)
-- SQL에 문장에서도 유닉스에서 사용하는 정규식을 사용하여 다양한 검색을 할 수 있다.
--DESC t_reg;
--사용기호 의미									 사용 예			
-- ^	  해당 문자로 시작하는 line출력				 '^pattern'			
-- $	  해당 문자로 끝나는 line출력				 'pattern$'			
-- .	  S시작해서 E로 끝나는 line출력(. -> 1글자)	 'S....E'			
-- *	  모든이라는 뜻, 글자 수가 0일수도 있음		 '[a-z]*'			
-- []	  해당 문자에 해당하는 한문자				 '[Pp]pattern'			
-- [^]	  해당 문자에 해당하지 않는 한 문자			 '[^a-m]attern'		

--SELECT text
--FROM t_reg
--;
--TEXT
-----------
--ABC123
--ABC 123
--ABC  123
--abc 123
--abc  123
--a1b2c3
--aabbcc123
--?/!@#$*&
--\~*().,
--123123
--123abc
--abc

--REGEXP_LIKE(text,REGEXP)

-- '[a-z]' : 소문자가 들어 있는 행을 모두 출력
-- a - z : a 에서 z범위까지 소문자
-- [] : 해당 문자에 해당하는 한문자
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-z]')
;
--TEXT
----------
--abc 123
--abc  123
--a1b2c3
--aabbcc123
--123abc
--abc

-- '[a-zA-Z]' : 대,소문자가 들어 있는 행을 모두 출력
-- a - z : a 에서 z 범위까지 소문자
-- A - Z : A 에서 Z 범위까지 대문자
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-zA-Z]')
;
--TEXT
-----------
--ABC123
--ABC 123
--ABC  123
--abc 123
--abc  123
--a1b2c3
--aabbcc123
--123abc
--abc

-- '[a-z] ' : 소문자로 시작하고 공백을 포함하는 경우 찾기
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-z] ')
;
--TEXT      
------------
--abc 123
--abc  123

-- 연속적인 글자수 지정하기
-- '[A-Z]{2}' : 대문자가 연속적으로 2글자 이상 오는 경우
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[A-Z]{2}')
;
--TEXT      
------------
--ABC123
--ABC 123
--ABC  123

-- 숫자가 연속적으로 3개
-- '[0-9]{3}' : 숫자가 연속적으로 3개 이상 오는 경우
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[0-9]{3}')
;
--TEXT
----------
--ABC123
--ABC 123
--ABC  123
--abc 123
--abc  123
--aabbcc123
--123123
--123abc

-- 특정 위치를 지정하여 출력하기
-- '^[a-zA-Z]' : 영문자로 시작하는 데이터
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'^[a-zA-Z]')
;
--TEXT
----------------
--ABC123
--ABC 123
--ABC  123
--abc 123
--abc  123
--a1b2c3
--aabbcc123
--abc

-- '[a-zA-Z]$' : 영문자로 끝나는 데이터
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-zA-Z]$')
;
--TEXT
----------------
--123abc
--abc

-- student테이블에서 이름 Ma|Mo 시작하는 데이터 찾기
-- '^M(a|o)' : M 으로 시작하고 a 또는 o로 끝나는 데이터
SELECT
    id
FROM student
WHERE REGEXP_LIKE(id,'^M(a|o)')
;
--ID
----------
--Martin
--Moore
