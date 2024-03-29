SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, COALESCE(FREEZER_YN, 'N') AS FREEZER_YN
FROM FOOD_WAREHOUSE
HAVING ADDRESS LIKE '경기도%'
ORDER BY WAREHOUSE_ID;

-- SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, COALESCE(FREEZER_YN, 'N') AS FREEZER_YN

-- COALESCE 함수를 이용해서 NULL 값을 'N' 값으로 변환

-- HAVING ADDRESS LIKE '경기도%'

-- HAVING 절과 LIKE 연산자를 이용해서 경기도로 시작하는 주소만 조회

-- https://school.programmers.co.kr/learn/courses/30/lessons/131114