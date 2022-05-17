-- p325 Q5
-- EMP_HW테이블에 EMP테이블의 데이터를 모두 저장해보세요.
-- 단 REMARK열은 NULL로 삽입합니다.
DESC emp;
--이름       널?       유형           
---------- -------- ------------ 
--EMPNO    NOT NULL NUMBER(4)    
--ENAME             VARCHAR2(10) 
--JOB               VARCHAR2(9)  
--MGR               NUMBER(4)    
--HIREDATE          DATE         
--SAL               NUMBER(7,2)  
--COMM              NUMBER(7,2)  
--DEPTNO            NUMBER(2)
   
INSERT INTO emp_hw ( empno,
                     ename,
                     job,
                     mgr,
                     hiredate,
                     sal,
                     comm,
                     deptno,
                     remark
) SELECT
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno,
    NULL AS remark
FROM emp
;
--12개 행 이(가) 삽입되었습니다.
SELECT * FROM emp_hw;
--EMPNO ENAME    JOB         MGR HIREDATE     SAL   COMM  DEPTNO REMARK
------- ------------------------ ---------------- ------ ------- ------
--7369  SMITH    CLERK      7902 80/12/17     800             20       
--7499  ALLEN    SALESMAN   7698 81/02/20    1600    300      30       
--7521  WARD     SALESMAN   7698 81/02/22    1250    500      30       
--7566  JONES    MANAGER    7839 81/04/02    2975             20       
--7654  MARTIN   SALESMAN   7698 81/09/28    1250   1400      30       
--7698  BLAKE    MANAGER    7839 81/05/01    2850             30       
--7782  CLARK    MANAGER    7839 81/06/09    2450             10       
--7839  KING     PRESIDENT       81/11/17    5000             10       
--7844  TURNER   SALESMAN   7698 81/09/08    1500      0      30       
--7900  JAMES    CLERK      7698 81/12/03     950             30       
--7902  FORD     ANALYST    7566 81/12/03    3000             20       
--7934  MILLER   CLERK      7782 82/01/23    1300             10       