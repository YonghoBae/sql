-- 프로그래머스: 업그레이드 된 아이템 구하기

-- 'ITEM_A'->'ITEM_B'일 때 'ITEM_A'는 'ITEM_B' 의 PARENT
-- 아이템 정보 테이블 ITEM_INFO
-- 아이템 관계 테이블 ITEM_TREE
-- ROOT 아이템은 무조건 존재
-- 희귀도 = 'RARE'인 아이템의 업그레이드 가능한 아이템
-- 아이템 ID DESC
SELECT ITEM_ID, ITEM_NAME, RARITY
FROM ITEM_INFO
WHERE ITEM_ID IN (
    SELECT IT.ITEM_ID
    FROM ITEM_TREE IT, ITEM_INFO II
    WHERE II.ITEM_ID = IT.PARENT_ITEM_ID AND RARITY = 'RARE'
)
ORDER BY ITEM_ID DESC;
