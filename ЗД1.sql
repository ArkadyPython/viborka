insert into performers (name_performers) values 
	('Аркадий Подколзин'),
	('Марк Лингвинин'),
	('Алексей Демин'),
	('Арсений Заболотный');
insert into genres (name_genres) values 
	('Рэп'),
	('Попса'),
	('Рок');
insert into genre_performers (genres_id, performers_id) values 
	(1, 1),
	(2, 2),
	(3, 3),
	(2, 4);
insert into albums (name_album, year_of_release) values 
	('Rist', 2005),
	('car', 2006),
	('nail', 2007),
	('fail', 2008);
insert into album_performers (performers_id, albums_id) values 
	(1, 2),
	(2, 3),
	(3, 1),
	(4, 4);
insert into track (name_track, duration, albums_id) values 
	('panch club', 202, 1),
	('teeth', 200, 1),
	('still', 316, 2),
	('pump', 156, 2),
	('king', 208, 3),
	('size', 558, 3),
	('pimp', 475, 4);
insert into collection (name_collection, year_of_release) values 
	('Сборник1', 2010),
	('Сборник2', 2011),
	('Сборник3', 2012),
	('Сборник4', 2013);
insert into track_collection (track_id, collection_id) values
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 1),
	(6, 2),
	(7, 3);