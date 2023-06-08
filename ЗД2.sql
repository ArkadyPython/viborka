select name_track, duration from track
where max(duration);

select track_name from track
where duration >= 210;

select name_collection from collection
where year_of_release between 2018 and 2020;

select name_performers from performers
where name_performers not like '% %';

select name_track from track
where name_track like '%мой%' or '%my%';






