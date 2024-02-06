--IF WE WANT TO DROP FOREIGN KEY
--ALTER TABLE 
--DROP FOREIGN KEY SALES FOREGIN KEY NAME;




--======================================================================================================
--THIS IS HOW WE ADD FOREIGN KEY
ALTER TABLE SALES
ADD FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID) ON DELETE CASCADE;

ALTER TABLE SALES
ADD FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT (PRODUCT_ID) ON DELETE CASCADE;



--THIS IS HOW WE ADD PRIMARY KEY
ALTER TABLE SALES
ADD PRIMARY KEY (ORDER_ID);


--THIS IS HOW WE DROP PRIMARY KEY
ALTER TABLE SALES
DROP PRIMARY KEY;



--=======================================================
--Adding column that is EMAIL
ALTER TABLE CUSTOMER
ADD  EMAIL VARCHAR2(80);

--ADDING UNIQUE KEY
ALTER TABLE CUSTOMER
ADD CONSTRAINT unique_email UNIQUE (EMAIL);


--DROPING UNIQUE KEY
ALTER TABLE CUSTOMER
DROP CONSTRAINT unique_email;

UPDATE CUSTOMER
SET EMAIL='sophia@gmail.com'
WHERE CUSTOMER_ID=6;


