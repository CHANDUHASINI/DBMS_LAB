USE PlayStoreDB;
UPDATE Apps SET Rating=4.5 WHERE AppName='Google Keep';
COMMIT;
UPDATE Apps SET Price=100 WHERE AppName='BYJU''S Learning';
ROLLBACK;
INSERT INTO Apps VALUES(1009,'SchedulePlanner',103,203,305,4.8,4000000,0);
COMMIT;
INSERT INTO Developers VALUES(106,'ChatGPT','India',2007);
ROLLBACK;
UPDATE Apps SET Rating=4.8 WHERE AppName='Google Classroom';
SAVEPOINT rating_update;

UPDATE Apps SET Rating=4.2 WHERE AppName='Spotify';
SAVEPOINT after_first_update;
UPDATE Apps SET Rating=4.5 WHERE AppName='Candy Crush';

UPDATE Apps SET Rating=4.8 WHERE AppName='Canva';
ROLLBACK TO SAVEPOINT after_first_update;

INSERT INTO Apps VALUES('Claude',101,203,302,4.8,5000000,0);
SAVEPOINT price_update;
UPDATE Apps SET Price=200 WHERE AppName='Claude';
ROLLBACK TO SAVEPOINT price_updates;
CREATE USER 'user'@'localhost' IDENTIFIED BY 'user';
GRANT SELECT ON Apps TO 'user'@'localhost';
GRANT SELECT,INSERT ON Apps TO 'user'@'localhost';
REVOKE INSERT ON Apps FROM 'user'@'localhost';

START TRANSACTION;
UPDATE Apps SET Rating=4.3 WHERE AppName='Spotify';
UPDATE Apps SET Rating=4.5 WHERE AppName='Instagram';
SAVEPOINT apps_update;
UPDATE Apps SET Price=500 WHERE AppName='Instagram';
ROLLBACK TO SAVEPOINT apps_update;

INSERT INTO Categories VALUES
(306,'Dance',14),
(307,'Drawing',8);
SAVEPOINT category_insert;
INSERT INTO Categories VALUES(308,'Swimming',5);
ROLLBACK TO SAVEPOINT category_insert;

GRANT SELECT,INSERT,UPDATE ON Apps TO 'user'@'localhost';
REVOKE UPDATE ON Apps FROM 'user'@'localhost';
GRANT SELECT ON Developers TO 'user'@'localhost';
REVOKE SELECT ON Developers FROM 'user'@'localhost';

UPDATE Apps SET Rating=4.5 WHERE AppName='Candy Crush';
UPDATE Apps SET Price=399 WHERE AppName='Candy Crush';
COMMIT;

UPDATE Apps SET Rating=4.9 WHERE AppID=1009;
SELECT * FROM Apps WHERE AppID=1009;

ROLLBACK;
SELECT * FROM Apps WHERE AppID=1009;

UPDATE Apps SET Rating=4.9 WHERE AppID=1009;
COMMIT;
SELECT * FROM Apps WHERE AppID=1009;


