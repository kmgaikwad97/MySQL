-- My Sql Queries
create database kshitijdb;

mysql -u root -p


-- DDL --

show databases;

use kshitijdb;

show tables;

drop database kshitijdb;

create table users(
    username varchar(10),
    userage int
)

ALTER TABLE users CHANGE COLUMN userage userage TINYINT;

ALTER TABLE users ADD COLUMN usermobile  BIGINT;

ALTER TABLE users ADD COLUMN userplacee varchar(100);

ALTER TABLE users CHANGE userplacee userplace varchar(100);

ALTER TABLE users DROP userplace; 

ALTER TABLE users ADD COLUMN userid int AUTO_INCREMENT PRIMARY KEY;

create table users(
    username varchar(10),
    userage int
)

DROP TABLE users1;



ALTER TABLE users CHANGE usermobile usermobile INT;
ALTER TABLE users CHANGE usermobile usermobile BIGINT;
ALTER TABLE users CHANGE username username varchar(100);


-- DML --

INSERT INTO users (username,userage,usermobile) values ('Dhaval Parmar', 20, 9967301477);
INSERT INTO users (username,userage,usermobile) values ('Kshitij gaikwad', 22, 9967303471);
INSERT INTO users (username,userage,usermobile) values ('Vicky gaikwad', 50, 9967301472);
INSERT INTO users (username,userage,usermobile) values ('Jem gaikwad', 24, 9967301474);
INSERT INTO users (username,userage,usermobile) values ('Anand Pawar', 21, 9967301467);
INSERT INTO users (username,userage,usermobile) values ('Arun Kamble', 27, 9967301478);



DELETE FROM users;

TRUNCATE TABLE users;

DELETE FROM users WHERE userid = 4;
DELETE FROM users WHERE usernam = "Dhaval Parmar";

UPDATE users SET username = "Samu";

TRUNCATE TABLE users;

UPDATE users SET username = "Amir Singh", userage = 17 WHERE userid = 2;







-- * universal selector 

SELECT * FROM users;
SELECT * FROM users WHERE 1;
SELECT userage, userid FROM users WHERE 1;
SELECT userage, userid FROM users WHERE userid > 3;


SELECT userage, userid, username FROM users WHERE username = "Dhaval Parmar";

SELECT userage, userid, username FROM users WHERE userage = 20 or userage = 21 or userage = 23;


SELECT userage, userid, username FROM users WHERE userage IN(20,21,22,23);
SELECT userage, userid, username FROM users WHERE userage IN('Dhaval Parmar','Aruns Kamble',"Anands Pawar");




SELECT userage, userid, username FROM users WHERE userage >=20 and userage <= 25;

SELECT userage, userid, username FROM users WHERE userage BETWEEN 20 and 25;

SELECT userage, userid, username FROM users WHERE username like 'a%'

SELECT userage, userid, username FROM users WHERE username like 'da%'

SELECT userage, userid, username FROM users WHERE username like '%r'

SELECT userage, userid, username FROM users WHERE username like '%a%'



INSERT INTO users (userage, userid, username) value ("Dhaval Parmar", 21, 9967301477)

SELECT userage, userid, username FROM users WHERE username="Dhaval Parmar" and userage = 20;
SELECT userage, userid, username FROM users WHERE username="Dhaval Parmar" and userage = 29;
SELECT userage, userid, username FROM users WHERE username="Dhaval Parmar" or userage = 50;







SELECT userage, userid, username FROM users ORDER BY username;

SELECT userage, userid, username FROM users ORDER BY username ASC;

SELECT userage, userid, username FROM users ORDER BY username DESC;


SELECT userage, userid, username FROM users ORDER BY userage;
SELECT userage, userid, username FROM users ORDER BY userage ASC, username DESC;



SELECT userage, userid, username FROM users ORDER BY userage limit 0,2;

SELECT userage, userid, username FROM users ORDER BY userage limit 3,2;

SELECT userage, userid, username FROM users ORDER BY userage ASC limit 0,1;

SELECT userage, userid, username FROM users ORDER BY userage DESC limit 1,1;

SELECT userage, userid, username FROM users WHERE userage<24 ORDER BY userage DESC limit 0,3;





CREATE TABLE country(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
)

INSERT INTO country (name) values ('India');
INSERT INTO country (name) values ('USA');
INSERT INTO country (name) values ('UK');


CREATE TABLE states(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    country INT
)


INSERT INTO states (name,countryid) values ('Maharashtra',1)
INSERT INTO states (name,countryid) values ('Punjab',1)
INSERT INTO states (name,countryid) values ('Goa',1)
INSERT INTO states (name,countryid) values ('Texas',2)
INSERT INTO states (name,countryid) values ('New Jersey',2)
INSERT INTO states (name,countryid) values ('Colmbo',4)


-- SELECT name, name FROM country,states WHERE id = countryid;
-- SELECT country.name, states.name FROM country, states WHERE id = countryid; 

SELECT country.name, states.name FROM country,states WHERE country.id = countryid;

SELECT c.name,s.name FROM country as c,states as s WHERE c.id = countryid;

SELECT c.name,s.name FROM country as c JOIN states as s ON c.id = countryid;
SELECT c.name,s.name FROM country as c,LEFT JOIN states as s ON c.id = countryid;
SELECT c.name,s.name FROM country as c,RIGHT JOIN states as s ON c.id = countryid;














































