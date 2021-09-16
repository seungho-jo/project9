
CREATE TABLE report(
	classCode varchar2(50) NOT null,
	id varchar2(20),
	title varchar2(200),
	cDate varchar2(50),
	status number,
	CONSTRAINT fk_osCode FOREIGN key(classCode) REFERENCES GOSUFORM(classcode)
);

SELECT * FROM report;

insert into report values ('44','testgosuid','뭘바르냐가 아니라,''어떻게''바르냐의차이.', to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS'),1);
insert into report values ('42','himan','스마트스토어로 월 100만원 만들기, 평범한 사람이 돈을 만드는 비법', to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS'),1);
insert into report values ('43','himan','요리연구가 홍신애의 고퀄 떡볶이 과외! <원데이클래스, 모두의 떡볶이>', to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS'),1);
insert into report values ('45','testgosuid','60분 공간밀착 only컨설팅! 실시간 가구배치와 스타일링, 제품 리스트', to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS'),1);
insert into report values ('45','himan','분재를 배워볼까? 가드닝 기초 이끼볼(코케다마) 만들기', to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS'),1);

select * from report where rownum <=10 ORDER BY classCode;