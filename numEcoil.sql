-- 분화 시작 개체 == 부모개체
-- 분화되어 나온 개체 == 자식개체
-- 대장균 배양 정보 테이블 ECOLI_DATA
-- 최초 대장균 부조ID == NULL
-- 개체ID, 자식의 수 출력
-- 자식이 없다면 0 출력
-- 개체ID ASC

SELECT PARENT_ID AS ID, COUNT(*) AS CHILD_COUNT
FROM ECOLI_DATA
GROUP BY PARENT_ID

-- 푸는중 모르겠어