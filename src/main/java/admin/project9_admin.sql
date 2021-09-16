
CREATE TABLE ADMINMEM(
	id varchar2(30) NOT NULL,
	pass varchar2(30) NOT NULL,
	CONSTRAINT id_pk PRIMARY KEY (id)
);

INSERT INTO ADMINMEM ( id, pass) VALUES ('admin100','adminimda'); 

SELECT * FROM adminmem;