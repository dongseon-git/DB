-- 비등가 조인(Non-Equi Join)
-- 같은 조건이 아닌 equal(=)이 아닌 크거나 작거나 하는 경우의 조건으로 조회

-- Customer 테이블과 gift 테이블을 Join하여 고객별로 마일리지 포인트를 조회한 후 
-- 해당 마일리지 점수로 받을 수 있는 상품을 조회하여 고객의 이름과 
-- 받을 수 있는 상품 명을 아래와 같이 출력하세요.

-- ORACLE JOIN
SELECT
    t1.gname,
    TO_CHAR(t1.point,'999,999,999') AS point,
    t2.gname
FROM customer t1, gift t2
WHERE t1.point BETWEEN t2.g_start AND t2.g_end
;

-- ANSI JOIN
SELECT
    t1.gname AS cust_name,
    TO_CHAR(t1.point,'999,999,999') AS point,
    t2.gname AS gift_name
FROM customer t1 JOIN gift t2
ON t1.point BETWEEN t2.g_start AND t2.g_end
;
--CUST_NAME            POINT GIFT_NAME                     
---------------------------- ------------------------------
--Bill Pullman         65,000 Tuna Set                      
--Mel Gibson           73,000 Tuna Set                      
--Michael Douglas      99,000 Tuna Set                      
--Brad Pitt           110,000 Shampoo Set                   
--Samuel Jackson      153,000 Shampoo Set                   
--Liam Neeson         180,000 Shampoo Set                   
--Arnold Scharz       265,000 Car wash Set                  
--Ahnjihye            273,000 Car wash Set                  
--Tom Hanks           298,000 Car wash Set                  
--Jim Carrey          315,000 Kitchen Supplies Set          
--Bruce Willis        320,000 Kitchen Supplies Set          
--Angela Bassett      420,000 Mountain bike                 
--Robin Williams      470,000 Mountain bike                 
--Morgan Freeman      542,000 LCD Monitor                   
--Jessica Lange       598,000 LCD Monitor                   
--Winona Ryder        625,000 Notebook                      
--Michelle Pfeiffer   670,000 Notebook                      
--James Seo           980,000 Refrigerator   