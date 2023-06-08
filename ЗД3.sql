select name_genres, count(performers.id) from genres
	join performers on genres.id = performers.id
	group by name_genres;
select albums.name_album, albums.year_of_release, count(track.id) from albums
	join track on albums.id = track.album_id
	group by albums.name_album, albums.year_of_release
	where albums.year_of_release = 2019 or albums.year_of_release = 2020;
select albums.name_album, avg(track.duration) from albums
	join track on albums.id = track.album_id
	group by albums.name_album;
select p.name_performers from performers p
	join album_performers ea on p.id = ea.performers_id
	join album a on a.id = ea.albums_id
	where albums.year_of_release <> 2020;
select name_collection from collection c
	join track_collection tc on c.id = tc.collection_id
	join track t on t.id = tc.collection_id
	join albums a on a.id = t.albums_id
	join album_performers ap on a.id = ap.albums_id
	join performers p on p.id = ap.performers_id
	where p.name_performers like 'Аркадий Подколзин';