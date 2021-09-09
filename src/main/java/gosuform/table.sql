CREATE TABLE member(
	id varchar2(20) PRIMARY KEY,
	pass varchar2(15) NOT NULL,
	name varchar2(50) NOT NULL,
	phone varchar2(12) NOT NULL,
	zipcode varchar2(10) NOT NULL,
	address1 varchar2(50) NOT NULL,
	address2 varchar2(50) NOT NULL,
	profile varchar2(2000) NOT NULL
);
INSERT INTO MEMBER values('himan','1111','홍길동','01012345678','05412357','서울 강남구 테헤란로 132','한독건물 8층','img.png');
SELECT * FROM MEMBER;
update member set pass = '11111111', name = '관리자', phone = '01045677654', zipcode = '06134', address1 = '서울 강남구 테헤란로 101', address2 = '2층', profile = '' where id = 'admin';