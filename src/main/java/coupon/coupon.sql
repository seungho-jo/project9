DROP TABLE coupon;
CREATE TABLE COUPON(
	couponName varchar2(30),
	couponNumber varchar2(32),
	discount NUMBER,
	cDay varchar2(30),
	status number CONSTRAINT number_ck CHECK (status IN (1,2,3)),
	CONSTRAINT coupon_pk PRIMARY KEY (couponNumber)
);

ALTER TABLE COUPON ADD cDay varchar2(30);


SELECT * FROM COUPON;

select * from coupon where rownum <=10 ORDER BY discount;

delete from coupon where couponNumber = '1111111111111129';

select count(*) from coupon;

SELECT * FROM coupon;