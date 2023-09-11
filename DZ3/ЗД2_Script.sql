 SELECT name_track название, duration длительность FROM track 
 where duration = (select MAX(duration) from  track);

SELECT name_track название, duration длительность FROM track 
 where duration >= '00:03:30';

SELECT name_collection сборник FROM Сollection 
 where year_release >= 2018 and year_release <= 2020;

select name_executor from executor where name_executor not like '% %';

SELECT name_track название FROM track 
 where name_track like '%My%';
