USE PlayStoreDB;
create view All_Apps as select * from Apps;
create view App_Details as select AppID,AppName,Rating,Price from Apps;
create view Highly_Rated as select * from Apps where Rating>=4.5;
create view Free_Apps as select * from Apps where Price=0;
select * from Highly_Rated;
SHOW FULL TABLES WHERE Table_type='VIEW';

create view App_Developer as select A.AppName,D.DeveloperName from Apps A join Developers D on A.DeveloperID=D.DeveloperID;
create view App_Publisher as select A.AppName,P.PublisherName from Apps A join Publishers P on A.PublisherID=P.PublisherID;
create view App_Category as select A.AppName,C.CategoryName from Apps A join Categories C on A.CategoryID=C.CategoryID;
create view App_Developer_Details as select A.*,D.DeveloperName,D.Country from Apps A join Developers D on A.DeveloperID=D.DeveloperID;
create view Category_Count as select C.CategoryName,count(A.AppID) as Total_Apps from Categories C left join Apps A on C.CategoryID=A.AppID group by C.CategoryName;
create view Developer_Count as select D.DeveloperName,count(A.AppID) as Total_Apps from Developers D left join Apps A on D.DeveloperID=A.DeveloperID group by D.DeveloperName;
create view Category_Average as select C.CategoryName,avg(A.Rating) as Average_rating from Categories C join Apps A on C.CategoryID=A.CategoryID group by C.CategoryName;
create view Rated_Apps_Developer as select A.AppName,A.Rating,D.DeveloperName from Apps A join Developers D on A.DeveloperId=D.DeveloperID where A.Rating>4.3;
select AppName,Rating from App_Details where Rating>=4.5;
show create view App_Details;

create view Category_Total as select C.CategoryName,count(A.AppID) as Total_Apps from Categories C join Apps A on C.CategoryID=A.CategoryID group by C.CategoryName;
create view Multiple_App_developers as select D.DeveloperName,count(A.AppID) as Total_Apps from Developers D join Apps A on D.DeveloperID=A.DeveloperID group by D.DeveloperID,D.DeveloperName having count(A.AppID)>1;
create view Category_Max_Min_Rating as select C.CategoryName,max(A.Rating) as Highest_Rating,min(A.Rating) as Lowest_Rating from Categories C join Apps A on C.CategoryID=A.CategoryID group by C.CategoryName;
create view Developer_App_Total as select D.DeveloperName,count(A.AppID) as Total_Apps from Developers D  left join Apps A on D.DeveloperID=A.DeveloperID group by D.DevelperName;
create view Developer_App_Total as select D.DeveloperName,count(A.AppID) as Total_Apps from Developers D  left join Apps A on D.DeveloperID=A.DeveloperID group by D.DevelperName;
create view Developer_App_Total as select D.DeveloperName,count(A.AppID) as Total_Apps from Developers D  left join Apps A on D.DeveloperID=A.DeveloperID group by D.DeveloperID,D.DevelperName;
CREATE VIEW Complete_App_Details AS
SELECT A.AppID,A.AppName,A.Rating,A.Price,A.Downloads,D.DeveloperName,P.PublisherName,C.CategoryName FROM Apps A JOIN Developers D ON A.DeveloperID = D.DeveloperID JOIN Publishers P
ON A.PublisherID = P.PublisherID
JOIN Categories C
ON A.CategoryID = C.CategoryID;

CREATE VIEW Highly_Rated_Details AS SELECT A.AppName,A.Rating,D.DeveloperName,C.CategoryName
FROM Apps A
JOIN Developers D
ON A.DeveloperID = D.DeveloperID
JOIN Categories C
ON A.CategoryID = C.CategoryID
WHERE A.Rating >= 4.5;

CREATE VIEW Publisher_Statistics AS SELECT P.PublisherName,COUNT(A.AppID) AS Total_Apps,COALESCE(SUM(A.Downloads), 0) AS Total_Downloads
FROM Publishers P
LEFT JOIN Apps A
ON P.PublisherID = A.PublisherID
GROUP BY P.PublisherID, P.PublisherName;

SELECT *
FROM Complete_App_Details
WHERE Rating >= 4.0
ORDER BY Rating DESC;

CREATE VIEW Update_App_Rating AS
SELECT AppID, AppName, Rating
FROM Apps;
UPDATE Update_App_Rating
SET Rating = 4.8
WHERE AppID = 1;
SELECT *
FROM Apps
WHERE AppID = 1;

Drop view Free_Apps;
show full tables where Table_Type='VIEW';
