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
SELECT * FROM MEMBER WHERE id = 'adad' AND phone = '01011111111';
CREATE TABLE question(
	qcode varchar2(5) PRIMARY KEY,
	title varchar2(100) NOT NULL,
	category varchar2(50) NOT NULL,
	content varchar2(2000) NOT NULL,
	wdate date,
	answer char(1) CHECK (answer IN ('Y','N')),
	id varchar2(20) NOT null
);
ALTER TABLE question 
MODIFY answer DEFAULT 'N';
select qcode,title,wdate,answer from question where id = 'himan' order by wdate DESC;
SELECT * FROM (SELECT ROWNUM AS RNUM,A.* FROM
(SELECT * FROM question where id = 'himan' ORDER BY WDATE DESC) A)
WHERE RNUM >=21 AND RNUM <=30;
SELECT * FROM
(SELECT ROWNUM AS RUM, A.* FROM question A where id = 'himan');
select count(*) tot from question where id = 'himan';
CREATE SEQUENCE seq_qs
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	MAXVALUE 999999;
SELECT seq_qs.nextval FROM dual;
insert into question values('q'||seq_qs.nextval,'쿠폰등록','쿠폰','내쿠폰 돌려줘!!',sysdate,'N','himan');
insert into question values(seq_qs.nextval,'쿠폰등록','쿠폰','<p><쿠폰등록이 안되요..../p>',sysdate,'N','himan');