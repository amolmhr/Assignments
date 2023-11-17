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
	
