/* SQL QUESTION 1 */ 
CREATE DATABASE linkedin;
USE linkedin;
create table ais (id int(10),technology varchar(30));
SELECT * FROM AIS;
INSERT INTO AIS VALUES (1,"DS")	;
INSERT INTO AIS VALUES (1,"Tableau");
INSERT INTO AIS VALUES (1,"SQL");
INSERT INTO AIS VALUES (2,"R")	;	
INSERT INTO AIS VALUES (2,"POWER BI");
INSERT INTO AIS VALUES (1,"Python");	
SELECT * FROM AIS;

SELECT DISTINCT id FROM ais
WHERE id IN (
    SELECT id FROM ais WHERE technology = 'DS'
) AND id IN (
    SELECT id FROM ais WHERE technology = 'Tableau'
) AND id IN (
    SELECT id FROM ais WHERE technology = 'SQL'
) AND id IN (
    SELECT id FROM ais WHERE technology = 'Python'
);


/* SQL QUESTION 2 */


CREATE DATABASE facebook;
USE facebook;
create table product_info (pr_id int(5),product_name varchar(30));
create table product_info_likes (user_id int(5),pr_id int(5), liked_date date);
SELECT * FROM product_info;
SELECT * FROM product_info_likes;
INSERT INTO product_info VALUES (1001,"Blog");
INSERT INTO product_info VALUES (1002,"Youtube");	
INSERT INTO product_info VALUES (1003,"Education");	
SELECT * FROM product_info;
INSERT INTO product_info_likes VALUES (1,1001,'2023-08-19');
INSERT INTO product_info_likes VALUES (2,1003,'2023-08-18');
SELECT * FROM product_info_likes;


SELECT p.pr_id
FROM product_info p
LEFT JOIN product_info_likes pl ON p.pr_id = pl.pr_id
WHERE pl.pr_id IS NULL;
