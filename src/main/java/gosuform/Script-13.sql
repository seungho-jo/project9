
SELECT *FROM MEMBER;

-- 카테고리
CREATE TABLE class_category (
	category varchar(50) CONSTRAINTS class_category_category_pk PRIMARY KEY
);
INSERT INTO class_category VALUES ('레슨');
INSERT INTO class_category VALUES ('홈/리빙');
INSERT INTO class_category VALUES ('이벤트');
INSERT INTO class_category VALUES ('비즈니스');
INSERT INTO class_category VALUES ('디자인/개발');
INSERT INTO class_category VALUES ('건강/미용');
INSERT INTO class_category VALUES ('알바');
INSERT INTO class_category VALUES ('기타');
SELECT * FROM class_category;

--고수신청 CONSTRAINT student08_tno_fk REFERENCES teacher01(tno)
CREATE TABLE gosuform (
	classcode varchar(50) PRIMARY KEY,
	id VARCHAR(20),
	nickname varchar(50),
	info varchar(4000), --고수소개
	history varchar(2000), --이력
	title varchar(200), -- 클래스 제목
	sns varchar(200),
	category varchar(50),
	ftf varchar(50), --대면비대면여부
	loc varchar(50),
	price varchar(50),
	classtime varchar(50),
	formimg VARCHAR2(2000)
);
DROP TABLE GOSUFORM;
SELECT TABLE gosuform;
-- 클래스 코드
create sequence seq_classcode
start with 1
increment by 1
maxvalue 99999999;

SELECT *
FROM USER_SEQUENCES;
SELECT seq_classcode.nextval
FROM dual;
-- 고수신청
INSERT INTO gosuform VALUES (seq_classcode.NEXTVAL,'himan','길동','안녕하세요','이력','피아노 가르쳐드립니다','https://www.youtube.com/','레슨','상관없음','경기도',20000,3,'');

SELECT * FROM gosuform;



--클래스 리스트 : 닉네임, 타이틀, 프로필사진, 클래스사진, 시간당가격
SELECT classcode, nickname,title,price,CATEGORY,id,formimg, profile 
FROM gosuform 
WHERE rownum < 5; --카테고리별

SELECT g.classcode, g.nickname,g.title,g.price,g.CATEGORY,g.id,g.formimg,m.profile
FROM gosuform g, MEMBER m
WHERE g.id = m.id AND rownum<5
ORDER BY classcode DESC; --카테고리별



--클래스 상세화면
SELECT g.*,m.profile
FROM gosuform g, MEMBER m
WHERE classcode= 12 AND g.id = m.id; 



-- 외주신청 : 제목, 카테고리, 진행방식, 지역, 금액, 기한, 세금계산서, 업무설명,파일,고수선택(default:0)
create sequence seq_oscode
start with 1
increment by 1
maxvalue 99999999;
SELECT seq_oscode.nextval
FROM dual;
DROP TABLE osform;
CREATE TABLE osform (
	oscode varchar2(50) PRIMARY KEY,
	id VARCHAR2(20),
	title varchar2(200), 
	category varchar2(50),
	ftf varchar2(50), --대면비대면여부
	loc varchar2(50),
	budget varchar2(50), -- 외주 예산
	datepicker varchar2(50),
	taxinvoice varchar2(50),
	explain varchar2(4000),
	osfile VARCHAR2(2000)
);
INSERT INTO osform VALUES (seq_oscode.NEXTVAL,'himan','피아노 가르쳐주세요','레슨','대면','경기도','협의가능','2021-09-10','불필요','경기도에서 가르쳐주실분 구합니다','img.jpg');

SELECT * FROM osform;

SELECT TRUNC(sysdate) - TRUNC(TO_DATE(DATEPICKER,'yyyy-mm-dd'))
FROM OSFORM;

--외주리스트
SELECT oscode, id, title, category, budget, explain, TRUNC(sysdate) - TRUNC(TO_DATE(DATEPICKER,'yyyy-mm-dd')) AS dday
FROM osform 
WHERE CATEGORY= '레슨'
ORDER BY oscode desc;

--외주상세화면
SELECT g.*,m.profile, m.name
FROM osform g, MEMBER m
WHERE oscode= ? AND g.id = m.id

--클래스 상세화면
SELECT g.*,m.profile, m.name
FROM osform g, MEMBER m
WHERE classcode= ? AND g.id = m.id; 

-- 듣고있는 학생들

--마이클래스 유저 / 수강중인 클래스
SELECT 

-- 마이클래스 유저 / 신청한 외주 리스트
SELECT TRUNC(sysdate) - TRUNC(TO_DATE(DATEPICKER,'yyyy-mm-dd')
FROM osform;

SELECT id, oscode, title, budget,taxinvoice,DATEPICKER, (TRUNC(sysdate) - TRUNC(TO_DATE(DATEPICKER,'yyyy-mm-dd'))) as dday
FROM osform
WHERE id = 'himan';

-- 마이페이지 운영중인 클래스 고수
SELECT classcode, title, nickname, id, profile, price, loc
FROM gosuform
WHERE id = ?