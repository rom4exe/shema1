INSERT INTO Album (id, name, year_release) 
	VALUES (100, 'Хочу_перемен_Cover', 2022);

INSERT INTO executor (id, name_executor) 
	VALUES (1, 'LOUNA'), (2, 'Пушной');

INSERT INTO albumexecutor (id_album, id_executor) 
	VALUES (100, 1), (100, 2);

INSERT INTO Track (id, id_album, name_track, duration)
	VALUES (1, 100, 'Хочу_перемен (Cover)', '00:03:05'), (2, 100, 'Кукушка (Cover)', '00:03:35'), ;

INSERT INTO TrackExecutor (id_track, id_executor) 
	VALUES (1, 1), (2,2);

INSERT INTO genre (id, name_genre) 
	VALUES (1, 'рок'), (2, 'поп'), (3, 'фолк') (4, 'инструментал');

INSERT INTO executor (id, name_executor) 
	VALUES (3, 'Ai mori'), (4, 'Kenney Polson'), (5, 'Guido Negraszus'), (6, 'Shoxrux Jamol'), (7, 'Александр Шевченко');
	
INSERT INTO album (id, name_album, year_release) 
	VALUES (101, 'in the shadow', 2021), (102, 'Love on a Two Way Street', 2020), (103, 'Reloaded', 2019), (104, 'Ikkinchi', 2018), (105, 'Белым на белом', 2021);

INSERT INTO track (id, id_album, name_track, duration) 
	VALUES 
		(3, (SELECT Id FROM album WHERE name_album ='in the shadow'), 'in the shadow', '00:03:30'),
		(4, (SELECT Id FROM album WHERE name_album ='Love on a Two Way Street'), 'Black Swan', '00:04:56'),
		(5, (SELECT Id FROM album WHERE name_album ='Reloaded'), 'My Infinity', '00:04:34'), 
		(6, (SELECT Id FROM album WHERE name_album ='Ikkinchi'), 'Sevishkanlar', '00:04:59'), 
		(7, (SELECT Id FROM album WHERE name_album ='Белым на белом'), 'Белым на белом', '00:03:41');

INSERT INTO albumexecutor (id_album, id_executor)
	values
	(
		(SELECT Id FROM album WHERE name_album ='in the shadow'), 
    	(SELECT Id FROM executor WHERE name_executor='Ai mori')
    ),
    (
    	(SELECT Id FROM album WHERE name_album ='Love on a Two Way Street'), 
    	(SELECT Id FROM executor WHERE name_executor='Kenney Polson')
    ),
  	(
  	 	(SELECT Id FROM album WHERE name_album ='Reloaded'), 
    	(SELECT Id FROM executor WHERE name_executor='Guido Negraszus')
 	 ),
 	 (
  	 	(SELECT Id FROM album WHERE name_album ='Ikkinchi'),
    	(SELECT Id FROM executor WHERE name_executor='Shoxrux Jamol')
 	 ),
  	(
  	 	(SELECT Id FROM album WHERE name_album ='Белым на белом'), 
    	(SELECT Id FROM executor WHERE name_executor='Александр Шевченко')
 	 );

insert into trackexecutor (id_track, id_executor)
	values 
	(
		(SELECT Id FROM track WHERE name_track ='in the shadow'), 
    	(SELECT Id FROM executor WHERE name_executor='Ai mori')
    ),
    (
    	(SELECT Id FROM track WHERE name_track ='Black Swan'), 
    	(SELECT Id FROM executor WHERE name_executor='Kenney Polson')	
    ),
    (
    	(SELECT Id FROM track WHERE name_track ='My Infinity'), 
    	(SELECT Id FROM executor WHERE name_executor='Guido Negraszus')	
    ),
    (
    	(SELECT Id FROM track WHERE name_track ='Sevishkanlar'), 
    	(SELECT Id FROM executor WHERE name_executor='Shoxrux Jamol')	
    ),
    (
    	(SELECT Id FROM track WHERE name_track ='Белым на белом'), 
    	(SELECT Id FROM executor WHERE name_executor='Александр Шевченко')	
    );
insert into executorgenre (id_genre, id_executor)
	values  
	(
		(SELECT Id FROM genre WHERE name_genre ='рок'), 
    	(SELECT Id FROM executor WHERE name_executor='Ai mori')
    ),
    (
    	(SELECT Id FROM genre WHERE name_genre ='инструментал'), 
    	(SELECT Id FROM executor WHERE name_executor='Kenney Polson')
    ),
    (
    	(SELECT Id FROM genre WHERE name_genre ='инструментал'), 
    	(SELECT Id FROM executor WHERE name_executor='Guido Negraszus')
    ),
    (
    	(SELECT Id FROM genre WHERE name_genre ='инструментал'), 
    	(SELECT Id FROM executor WHERE name_executor='Shoxrux Jamol')
    ),
    (
    	(SELECT Id FROM genre WHERE name_genre ='поп'), 
    	(SELECT Id FROM executor WHERE name_executor='Александр Шевченко')
    );
   
   INSERT INTO Сollection (id, name_collection, year_release) 
	VALUES (1, 'Сборник 19', 2019), (2, 'Сборник 20', 2020), (3, 'Сборник 21', 2021), (4, 'Сборник 22', 2022);

INSERT INTO trackcollection (id_track, id_collection)
	values
	(
		(SELECT Id FROM track WHERE name_track ='My Infinity'), 
    	(SELECT Id FROM Сollection WHERE name_collection='Сборник 19')
    ),
    (
		(SELECT Id FROM track WHERE name_track ='Sevishkanlar'), 
    	(SELECT Id FROM Сollection WHERE name_collection='Сборник 19')
    ),
    (
		(SELECT Id FROM track WHERE name_track ='Black Swan'), 
    	(SELECT Id FROM Сollection WHERE name_collection='Сборник 20')
    ),
    (
		(SELECT Id FROM track WHERE name_track ='Sevishkanlar'), 
    	(SELECT Id FROM Сollection WHERE name_collection='Сборник 20')
    ),
    (
		(SELECT Id FROM track WHERE name_track ='Sevishkanlar'), 
    	(SELECT Id FROM Сollection WHERE name_collection='Сборник 21')
    ),
    (
		(SELECT Id FROM track WHERE name_track ='in the shadow'), 
    	(SELECT Id FROM Сollection WHERE name_collection='Сборник 21')
    ),
    (
		(SELECT Id FROM track WHERE name_track ='Белым на белом'), 
    	(SELECT Id FROM Сollection WHERE name_collection='Сборник 21')
    ),
    (
		(SELECT Id FROM track WHERE name_track ='My Infinity'), 
    	(SELECT Id FROM Сollection WHERE name_collection='Сборник 22')
    ),
    (
		(SELECT Id FROM track WHERE name_track ='Кукушка (Cover)'), 
    	(SELECT Id FROM Сollection WHERE name_collection='Сборник 22')
    ),
    (
		(SELECT Id FROM track WHERE name_track ='Хочу_перемен (Cover)'), 
    	(SELECT Id FROM Сollection WHERE name_collection='Сборник 22')
    ),
    (
		(SELECT Id FROM track WHERE name_track ='Белым на белом'), 
    	(SELECT Id FROM Сollection WHERE name_collection='Сборник 22')
    );
