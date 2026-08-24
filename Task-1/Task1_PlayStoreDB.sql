CREATE DATABASE PlayStoreDB;
USE PlayStoreDB;
CREATE TABLE Developers(
DeveloperID INT PRIMARY KEY,
DeveloperName VARCHAR(60)NOT NULL,
Country VARCHAR(30),
FoundedYear INT
);

CREATE TABLE Publishers(
PublisherID INT PRIMARY KEY,
PublisherName VARCHAR(60),
HeadOffice VARCHAR(40),
SupportEmail VARCHAR(60)
);

CREATE TABLE Categories(
CategoryID INT PRIMARY KEY,
CategoryName VARCHAR(40),
MinimalAge INT
);

CREATE TABLE Apps(
AppID INT PRIMARY KEY,
AppName VARCHAR(60),
DeveloperID INT,
PublisherID INT,
CategoryID INT,
Rating DECIMAL(2,1),
Downloads BIGINT,
Price DECIMAL(6,2)
);

INSERT INTO Developers VALUES
(101,'Google LLC','USA',1998),
(102,'Meta Platforms','USA',2004),
(103,'Spotify AB','Sweden',2006),
(104,'Canva Pty Ltd','Australia',2012),
(105,'BYJU''S','India',2011);

INSERT INTO Publishers VALUES
(201,'Google Play','California','support@google.com'),
(202,'Samsung Galaxy Store','Seoul','support@samsung.com'),
(203,'Huawei AppGAllery','Shenzhenn','support@huawei.com'),
(204,'Amazon Appstore','Seattle','support@amazon.com');

INSERT INTO Categories VALUES
(301,'Education',3),
(302,'Productivity',3),
(303,'Music',12),
(304,'Social',13),
(305,'Gaming',16);

INSERT INTO Apps VALUES
(1001,'Google Classroom',101,201,301,4.6,500000000,0),
(1002,'Google Keep',101,201,302,4.5,1000000000,0),
(1003,'Instagram',102,201,302,4.4,5000000000,0),
(1004,'Spotify',103,201,303,4.5,10000000000,0),
(1005,'Canva',104,201,302,4.7,5000000000,0),
(1006,'BYJU''S Learning',105,201,301,4.3,1000000000,299),
(1007,'Candy Crush',102,204,305,4.6,1000000000,0),
(1008,'Temple Run',104,203,305,4.2,5000000000,0);

SELECT * FROM Developers;
SELECT * FROM Publishers;
SELECT * FROM Categories;
SELECT * FROM Apps;

DESC Apps;

INSERT INTO Developers  VALUES
(106,'OPenAI','USA',2015);

INSERT INTO Categories VALUES
(306,'Artificial Intelligence',12);
INSERT INTO Apps VALUES
(1008,'ChatGPT',106,201,306,4.8,100000000,0);

Update Apps SET Rating=4.5 WHERE AppID=1008;

DELETE FROM Developers WHERE DeveloperID=105;

UPDATE Publishers SET SupportEmail='support@Galaxy.com' WHERE PublisherID=202;

INSERT INTO Apps VALUES
(1009,'Tourist Buddy',103,203,304,5.0,50000000000000,0),
(1010,'MyMusic',102,204,303,5.0,10000000000000,500);

UPDATE Apps SET Price=199 WHERE AppID=1006;

DELETE FROM Categories WHERE CategoryID=303;

SELECT * FROM Developers;
SELECT * FROM Publishers;
SELECT * FROM Categories;
SELECT * FROM Apps;










