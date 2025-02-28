-- usertbl과 buytbl 을 바탕으로 다음 결과가 나오는 뷰를 정의하세요
-- CREATE VIEW : VIEW 생성
-- CONCAT(문자열1, 문자열2) : 문자열 두개 합치기
-- VIEW는 테이블에서 필요한 내용만 뽑아낸 작은 가상의 테이블이다.
CREATE VIEW v_userbuytbl
AS
SELECT U.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2) AS '연락처'
FROM usertbl U INNER JOIN buytbl B
ON U.userid = B.userid;

-- 위에서 정의한 뷰에서 userid 가 김범수 인 데이터만 출력하세요
SELECT