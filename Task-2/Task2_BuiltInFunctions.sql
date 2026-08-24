USE PlayStoreDB;
SELECT UPPER(DeveloperName)FROM Developers;
SELECT LOWER(DeveloperName) FROM Developers;
SELECT LENGTH(AppName) FROM Apps;
SELECT LENGTH(CategoryName) FROM Categories;
SELECT CURRENT_DATE();
SELECT CURRENT_TIME();
SELECT ROUND(Rating,0) FROM Apps;
SELECT SUBSTRING(AppName,1,5) FROM Apps;
SELECT CONCAT(DeveloperName,'',Country) FROM Developers;
SELECT ROUND(Rating,0) FROM Apps;
SELECT CEIL(Price) FROM Apps;
SELECT DeveloperName,FoundedYear FROM Developers;
SELECT CAST(Downloads AS CHAR) FROM Apps;
SELECT UPPERCASE(AppName),Rating FROM Apps;
SELECT CategoryName,SUBSTRING(CategoryName,1,3) FROM Categories;
SELECT ABS(Price-200) FROM Apps;
SELECT DeveloperName,LENGTH(DeveloperName) FROM Developers;
SELECT current_date(),current_timestamp();
SELECT AppName,CAST(Downloads AS char)FROM Apps;




