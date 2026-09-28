USE PlayStoreDB;
insert into Developers values
(105,"Byjus","India",2011);
alter table Apps ADD constraint fk_developer foreign key(DeveloperID) references Developers(DeveloperID);
alter table Apps ADD constraint fk_publisher foreign key(PublisherID) references Publishers(PublisherID);
alter table Apps ADD constraint fk_category foreign key(CategoryID) references Categories(CategoryID);
Select * from Apps where Rating>4.5;
Select * from Apps where Price=0;
select * from Apps where CategoryID=305;
select * from Apps where Downloads>500000000;

SELECT * FROM Apps WHERE Rating BETWEEN 4.3 AND 4.7;
Select * from Apps Where Price in (0,299);
select * from Apps where AppName LIKE 'G%';
select * from Apps where AppName LIKE '%Google%';
select * from Apps where Rating>4.0 AND Downloads>500000000;
select * from Apps where CategoryID=301 or CategoryID=305;
select * from Apps where NOT AppName LIKE 'G%';
select * from Apps where Ratingg<4.5 or Downloads>1000000000;
select * from Apps where AppName like '%a%';
select * from Apps where Price between 0 and 300;
insert into Apps(AppID,AppName,DeveloperID,PublisherID,CategoryID,Rating,Price,Downloads) values
(1009,'MusicWorld',999,201,305,4.5,0,1000000);
select * from Apps where not CategoryID=305;
