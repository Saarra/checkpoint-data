CREATE TABLE Product(
    product_id VARCHAR2(20)  PRIMARY KEY,
    product_name VARCHAR2(20) NOT NULL,
    price NUMBER CHECK(NUMBER>0)
);
 CREATE TABLE Customer(
    customer_id VARCHAR2(20)  PRIMARY KEY,
    customer_name VARCHAR2(20) NOT NULL,
    customer_tel NUMBER 
 );
 CREATE TABLE Orders(
     quantity NUMBER,
     total_amount NUMBER,
     FOREIGN KEY(customer_id) REFERENCES Customer(customer_id),
     FOREIGN KEY(product_id) REFERENCES Product(product_id)
 );

ALTER TABLE Product ADD Category VARCHAR2(20);
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;