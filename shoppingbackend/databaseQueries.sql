CREATE TABLE category (
 id  IDENTITY ,
 name VARCHAR(50),
 description VARCHAR(255),
 is_active BOOLEAN ,
 
 CONSTRAINT pk_category_id PRIMARY KEY (id)

)


CREATE TABLE product (
 id  IDENTITY ,
 name VARCHAR(50),
 description VARCHAR(255),
 image_url  VARCHAR(50),
 quantity INT ,
 price INT,
 is_active BOOLEAN ,
 CONSTRAINT pk_product_id PRIMARY KEY (id)

);


INSERT INTO product VALUES (1 , 'Letv', 'Letv mobile is great mobile', '1.jpg',10, 9000, true );
INSERT INTO product VALUES (2 , 'Oppo', 'Oppo mobile is latest mobile', '2.jpg',8 ,7000 ,true );
INSERT INTO product VALUES (3 , 'Redmi', 'Redmi mobile is New mobile', '3.jpg',11 ,12000 , true );
INSERT INTO product VALUES (4 , 'Samsung', 'Samsung mobile is convential mobile', '4.jpg',6, 8000 , true );
INSERT INTO product VALUES (5 , 'Sony', 'Sony mobile is advanced mobile', '5.jpg',8, 6000 , true );

3)   

CREATE TABLE address (
 addressId  IDENTITY ,
 houseNo VARCHAR(50),
 street VARCHAR(255),
 city VARCHAR(255),
 state VARCHAR(255),
 country VARCHAR(255),
 pin VARCHAR(255),
 CONSTRAINT p_user_id PRIMARY KEY (addressId)

);


4)

CREATE TABLE user (
 userId  IDENTITY ,
 userName VARCHAR(50),
 email VARCHAR(255),
 phoneNo VARCHAR(255),
 role VARCHAR(255),

 CONSTRAINT pk_usertabl_id PRIMARY KEY (userId)

);
5)

CREATE TABLE user_address (

 userId INT ,

 addressId INT

);





