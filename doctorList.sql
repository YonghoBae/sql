-- 프로그래머스: 흉부외과 또는 일반외고 의사 목록 출력하기
-- 의사 정보 테이블 
-- 진료과 = CS OR GS
-- 고용일자 DESC, 이름 ASC
-- 날짜 포맷 - YYYY-MM-DD

SELECT DR_NAME,DR_ID,MCDP_CD,DATE_FORMAT(HIRE_YMD,'%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD = 'CS' OR MCDP_CD = 'GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC;