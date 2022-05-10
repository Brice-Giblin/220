CREATE DATABASE testtttt;
use testtttt;



CREATE TABLE tree (

    id int NOT NULL UNIQUE AUTO_INCREMENT,
    treetype varchar(20) NOT NULL ,
    color varchar(20) NOT NULL,
    location varchar(20),
    PRIMARY KEY (id)


);

CREATE TABLE ordertree (

id int NOT NULL UNIQUE AUTO_INCREMENT,

title varchar(30) NOT NULL ,
store_date date,

PRIMARY KEY (id)


);

ALTER TABLE ordertree add column store_date date;

CREATE TABLE tree_ordertree_association(

id int NOT NULL UNIQUE AUTO_INCREMENT,
tree_id int NOT NULL ,
ordertree_id int NOT NULL,
PRIMARY KEY (id)


);




INSERT INTO tree (treetype, color, location) VALUES ('Oak', 'Brown', 'Westport');
INSERT INTO tree (treetype, color, location) VALUES ('Birch', 'White', 'Fall River');
INSERT INTO tree (treetype, color, location) VALUES ('Spruce', 'Dark Brown', 'Bristol');

INSERT INTO ordertree (title) VALUES ('Avaliable');
INSERT INTO ordertree (title) VALUES ('Not avaliable');
INSERT INTO ordertree (title) VALUES ('Few Avaliable');


SELECT * FROM tree;
SELECT treetype FROM tree;
SELECT * FROM ordertree;
SELECT * FROM tree_ordertree_association;
SELECT location FROM tree;



INSERT INTO tree_ordertree_association (tree_id, ordertree_id) VALUES (3, 3);
INSERT INTO tree_ordertree_association (tree_id, ordertree_id) VALUES (2, 1);
INSERT INTO tree_ordertree_association (tree_id, ordertree_id) VALUES (1, 2);