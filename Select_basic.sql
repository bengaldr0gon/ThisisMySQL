/* 	SELECT [DISTINCT|ALL] 열_리스트
	FROM 테이블_리스트
	[WHERE 검색_조건식]
	[GROUP BY 그룹_기준열_리스트]
	[HAVING 그룹_조건식]
	[ORDER BY { 정열_기준열 [ASC|DESC][,] } ];
*/

USE univDB ; 
SELECT database() ;
-- 테이블의 특정 열 검색
SELECT 이름, 주소
FROM 학생 ;
-- 테이블의 모든 열 검색
SELECT 학번, 이름, 주소, 학년, 나이, 성별, 휴대폰번호, 소속학과
FROM 학생 ;

SELECT *
FROM 학생 ; 
# *은 모두 출력
-- 중복 행을 제거하고 검색
SELECT DISTINCT 소속학과
FROM 학생;
# DISTINCT = 중복행 없이

-- 조건 검색: WHERE 절

SELECT 이름, 학년, 소속학과, 휴대폰번호 
FROM 학생
WHERE 학년 >=2 AND 소속학과='컴퓨터' ;

SELECT 이름, 학년, 소속학과, 휴대폰번호 
FROM 학생
WHERE (학년>=1 AND 학년 <=3) OR NOT(소속학과='컴퓨터') ;

SELECT 이름, 학년, 소속학과, 휴대폰번호
FROM 학생
WHERE (학년 BETWEEN 1 AND 3) OR NOT(소속학과='컴퓨터');
# BETWEEN 옵션은 BETWEEN (first) AND (second) 로 first와 second 사이의 값을 지정한다.

-- 순서화 검색: ORDER BY절

SELECT 이름, 학년, 소속학과
FROM 학생
WHERE 소속학과='컴퓨터' OR 소속학과='정보통신'
ORDER BY 학년 ASC ;
# ASC는 오름차순을 의미한다.

SELECT * 
FROM 학생
ORDER BY 학년 ASC, 이름 DESC ;
# 학년을 기준으로 먼저 1차 오름차순 정렬, 학년이 같은 경우에는 이름을 기준으로 2차 내림차순

/*
SQL 기본 집계 함수
COUNT() 열 / 행 값의 개수
MAX() 특정 열 값중 최댓값
MIN() 특정 열 값중 최솟값
SUM() 특정 열 값의 합계
AVG() 특정 열 값의 평균
*/

# 전체 학생 수
SELECT COUNT(*)
FROM 학생;

SELECT COUNT(학번)
FROM 학생;

SELECT COUNT(*) AS 학생수1, COUNT(주소) AS 학생수2, COUNT(DISTINCT 주소) AS 학생수3
FROM 학생 ;

# 여학생의 평균 나이 
SELECT AVG(나이) '여학생 평균나이'
FROM 학생
WHERE 성별='여' ; 










