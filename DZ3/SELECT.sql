SELECT name_track название, duration длительность FROM track 
 where duration = (select MAX(duration) from  track);

SELECT name_track название, duration длительность FROM track 
 where duration >= '00:03:30';

SELECT name_collection сборник FROM Collection 
 where year_release >= 2018 and year_release <= 2020;

select name_executor from executor where name_executor not like '% %';

SELECT name_track название FROM track 
where string_to_array(lower(name_track), ' ') && ARRAY['my']; 

select name_genre жанр, COUNT(id_executor) количество_исполнителей_в_жанре FROM executorgenre e
join genre g on g.id = e.id_genre
GROUP BY name_genre;

select name_album альбом, AVG(duration) средняя_продолжительность_треков FROM track t 
join album a on a.id = t.id_album
GROUP by name_album;

SELECT count(name_track) Всего_треков_в_альбомах_с_2019_по_2020 FROM track t
left join album a on a.id  =  t.id_album
where year_release >= 2019 and year_release <= 2020;

SELECT name_executor
FROM executor e 
WHERE name_executor NOT IN (
    select name_executor FROM executor e 
	left join albumexecutor a2 on a2.id_executor = e.id
	left join album a on a.id  =  a2.id_album
	where year_release = 2020
);

SELECT DISTINCT name_collection 
FROM collection c
JOIN trackcollection t ON t.id_collection  = c.id 
JOIN track t2  ON t2.id  = t.id_track  
JOIN albumexecutor a  ON a.id_album  = t2.id_album  
JOIN executor e  ON e.id  = a.id_executor 
WHERE name_executor = 'Александр Шевченко';
