CREATE DATABASE store;
use store;

CREATE TABLE productbuyer (

    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20) NOT NULL ,
    lastname varchar(20) NOT NULL,
    email varchar(20),
    PRIMARY KEY (id)


);

CREATE TABLE productorder (

id int NOT NULL UNIQUE AUTO_INCREMENT,

title varchar(30) NOT NULL ,
store_date date,

PRIMARY KEY (id)


);

ALTER TABLE productorder add column store_date date;

CREATE TABLE productbuyer_productorder_association(

id int NOT NULL UNIQUE AUTO_INCREMENT,
productbuyer_id int NOT NULL ,
productorder_id int NOT NULL,
PRIMARY KEY (id)


);


INSERT INTO productbuyer (firstname, lastname, email) VALUES ('Bill', 'Steve', 'billsteve@gmail.com');
INSERT INTO productbuyer (firstname, lastname, email) VALUES ('Adam', 'Sandler', 'adamsand@gmail.com');
INSERT INTO productbuyer (firstname, lastname, email) VALUES ('Tyler', 'Childers', 'tchilders@gmail.com');
INSERT INTO productorder (title) VALUES ('Apples');
INSERT INTO productorder (title) VALUES ('Bannanas');
INSERT INTO productorder (title) VALUES ('Steak');

SELECT * FROM productbuyer;
SELECT * FROM productorder;
SELECT * FROM productbuyer_productorder_association;

INSERT INTO productbuyer_productorder_association (productbuyer_id, productorder_id) VALUES (3, 3);
