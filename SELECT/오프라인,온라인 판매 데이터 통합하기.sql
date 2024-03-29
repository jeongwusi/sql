SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM ONLINE_SALE
WHERE MONTH(SALES_DATE) = 03
UNION
SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, NULL AS USER_ID, SALES_AMOUNT
FROM OFFLINE_SALE
WHERE MONTH(SALES_DATE) = 03
ORDER BY 1, 2, 3;

-- UNION

-- 'UNION ALL'은 중복을 허용하며, 'UNION'은 중복을 제거합니다.

-- NULL AS USER_ID

-- OFFLINE_SALE에는 사용자 ID가 없으므로 NULL 값을 사용합니다.

-- ORDER BY 1, 2, 3

-- 결과를 날짜, 제품 ID, 사용자 ID에 따라 정렬합니다.

-- ORDER BY 절은 전체 결과 집합에 대해 적용되므로, 첫 번째 SELECT 문이거나 두 번째 SELECT 문이거나 모두 동일하게 적용된다. (오히려 각각의 SELECT 문에 ORDER BY를 사용하면 오류가 나온다.)

-- https://school.programmers.co.kr/learn/courses/30/lessons/131537