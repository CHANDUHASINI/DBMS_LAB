USE PlayStoreDB;
SELECT A.AppName,D.DeveloperName FROM Apps A INNER JOIN Developers D ON A.DeveloperID=D.DeveloperID;
SELECT A.AppName,P.PublisherName FROM Apps A INNER JOIN Publishers P ON A.PublisherID=P.PublisherID;
SELECT A.AppName,C.CategoryName FROM Apps A INNER JOIN Categories C ON A.CategoryID=C.CategoryID;
SELECT A.AppName,D.DeveloperNAme,P.PublisherName FROM Apps A INNER JOIN Developers D ON A.DeveloperID=D.DeveloperID INNER JOIN Publishers P ON A.PublisherID=P.PublisherID;
SELECT A.AppName,D.DeveloperName,C.CategoryName From Apps A Inner join Developers D ON A.DeveloperID=D.DeveloperID inner join Categories C on A.CategoryID=C.CategoryID;
SELECT P.PublisherName,A.AppName from Publishers P Left join Apps A ON P.PublisherID=A.PublisherID;
select C.CategoryName,A.AppName from Categories C left join Apps A on C.CategoryID=A.CategoryID;


select P.PublisherName,A.AppName from Publishers P left join Apps A on P.PublisherID=A.PublisherID;
select A.AppName,P.PublisherName from Publishers P right join Apps A on P.PublisherID=A.PublisherID;
select C.CategoryName,A.AppName  from Categories C left join Apps A  on C.CategoryID=A.CategoryID;
select A.AppName,D.DeveloperName,D.Country from Apps A join Developers D on A.DeveloperID=D.DeveloperID;
select A.AppName,D.DeveloperName,P.PublisherName,C.CategoryName from Apps A join Developers D on A.DeveloperID=D.DeveloperID join Publishers P on A.publisherID=P.PublisherID join Categories C on A.CategoryID=A.CategoryID; 
select A.AppName,D.DeveloperName,D.Country from Apps A join Developers D on A.AppID=D.DeveloperID where D.Country='USA';
select A.AppName,P.PublisherName,C.CategoryName from Apps A join Publishers P on A.PublisherID=P.PublisherID join Categories C on C.CategoryID=A.CategoryID where C.CategoryName='Gaming';
select A.AppName,D.DeveloperName,A.Rating from Apps A join Developers D on A.DeveloperID=D.DeveloperID where A.Rating>4.5;

select P.PublisherName,A.AppName from Publishers P left join Apps A on P.PublisherID=A.PublisherID;
select P.PublisherName from Publishers P left join Apps A on P.PublisherID=A.PublisherID where A.PublisherID='NULL';
select A.AppName,C.CategoryName from Apps A inner join Categories C on A.CategoryID=C.CategoryID order by C.CategoryName;
select A.AppName,D.DeveloperName,P.PublisherName,C.CategoryName,A.Rating from Apps A inner join Developers D on A.DeveloperID=D.DeveloperID inner join Publishers P on A.PublisherID=P.PublisherID inner join Categories C on A.CategoryID=C.CategoryID;
select A.AppName,D.DeveloperName,D.Country,P.PublisherName from Apps A inner join Developers D on A.DeveloperID=D.DeveloperID inner join Publishers P on A.PublisherID=P.PublisherID where D.Country='USA' AND P.PublisherName='Google Play';
select D.DeveloperName,A.AppName from Developers D left join Apps A on D.DeveloperID=D.DeveloperID;
SELECT D1.DeveloperName, D2.DeveloperName,D1.Country FROM Developers D1 JOIN Developers D2 ON D1.Country = D2.Country AND D1.DeveloperID < D2.DeveloperID;
select P.PublisherName,C.Categoryname from Publishers P cross join Categories C;
select P.PublisherName,A.AppName from Publishers P left join Apps A on P.PublisherID=A.PublisherID UNION select P.PublisherName,A.AppName from Publishers P right join Apps A on P.PublisherID=A.PublisherID;
select A.AppName,C.CategoryName,D.DeveloperName,P.PublisherName from Apps A join Categories C on A.CategoryID=C.CategoryID join Developers D on D.DeveloperID=A.DeveloperID join Publishers P on P.PublisherID=A.PublisherID where C.CategoryName in ('Gaming','Social');
select A.AppName,D.DeveloperName,C.CategoryName from Apps A join  Developers D on A.DeveloperID=D.DeveloperID join Categories C on A.CategoryID=C.CategoryID where A.Rating between 4.3 and 4.7;
select D.DeveloperName,D.country,A.AppName from Developers D join Apps A on D.DeveloperID=A.DeveloperID where D.Country<>'India';
