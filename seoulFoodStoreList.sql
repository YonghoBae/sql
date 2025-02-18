-- 프로그래머스: 서울에 위치한 식당 목록 출력하기
-- '%서울%'로 서울 식당 목록 출력 시 틀림
-- 중간에 서울이 들어가는 주소가 있는걸까? testcase에는 없는데 실제 검사 testcase에는 있을 것으로 추정된다.
SELECT 
    RI.REST_ID, 
    RI.REST_NAME, 
    RI.FOOD_TYPE, 
    RI.FAVORITES, 
    RI.ADDRESS, 
    ROUND(AVG(RR.REVIEW_SCORE), 2) AS SCORE
FROM 
    REST_INFO RI
JOIN 
    REST_REVIEW RR 
ON 
    RI.REST_ID = RR.REST_ID
WHERE 
    RI.ADDRESS LIKE '서울%'
GROUP BY 
    RI.REST_ID
ORDER BY 
    SCORE DESC, 
    RI.FAVORITES DESC;