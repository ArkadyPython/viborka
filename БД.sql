CREATE TABLE IF NOT EXISTS genres (
	id SERIAL PRIMARY KEY,
	name_genres VARCHAR(60) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS performers (
	id SERIAL PRIMARY KEY,
	name_performers VARCHAR(60) NOT NULL
);
CREATE TABLE IF NOT EXISTS genre_performers (
	genres_id INTEGER REFERENCES genres(id),
	performers_id INTEGER REFERENCES performers(id),
	CONSTRAINT genre_performers_pk PRIMARY KEY(genres_id, performers_id)
);

CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	name_album VARCHAR(60) NOT NULL,
	year_of_release INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS album_performers (
	performers_id INTEGER REFERENCES performers(id),
	albums_id INTEGER REFERENCES albums(id),
	CONSTRAINT album_performers_pk PRIMARY KEY(albums_id, performers_id)
);
CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	name_track VARCHAR(60) NOT NULL UNIQUE,
	duration integer NOT NULL,
	albums_id INTEGER REFERENCES albums(id)
);
CREATE TABLE IF NOT EXISTS collection (
	id SERIAL PRIMARY KEY,
	name_collection VARCHAR(60) NOT NULL UNIQUE,
	year_of_release INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS track_collection (
	track_id INTEGER REFERENCES track(id),
	collection_id INTEGER REFERENCES collection(id),
	CONSTRAINT track_collection_pk PRIMARY KEY(track_id, collection_id)
);