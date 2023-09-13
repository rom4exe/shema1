CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name_album VARCHAR(40) NOT NULL,
	year_release int NOT NULL
	);

CREATE TABLE IF NOT EXISTS Executor (
	id SERIAL PRIMARY KEY,
	name_executor VARCHAR(60) NOT NULL
	);

CREATE TABLE IF NOT EXISTS AlbumExecutor (
	id_album INTEGER REFERENCES Album(id),
	id_executor INTEGER REFERENCES Executor(id),
	CONSTRAINT PK PRIMARY KEY (id_album, id_executor)
	);

CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name_genre VARCHAR(60) NOT NULL
	);

CREATE TABLE IF NOT EXISTS ExecutorGenre (
	id_genre INTEGER REFERENCES Genre(id),
	id_executor INTEGER REFERENCES Executor(id),
	CONSTRAINT GE PRIMARY KEY (id_genre, id_executor)
	);
	
CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	id_album INTEGER NOT NULL REFERENCES Album(id),
	name_track VARCHAR(60) NOT NULL,
	duration TIME NOT NULL
	);
	
CREATE TABLE IF NOT EXISTS Сollection (
	id SERIAL PRIMARY KEY,
	name_collection VARCHAR(40) NOT NULL,
	year_release int NOT NULL
	);
	
CREATE TABLE IF NOT EXISTS trackcollection (
	id_track INTEGER REFERENCES Track(id),
	id_collection INTEGER REFERENCES collection(id),
	CONSTRAINT TC PRIMARY KEY (id_track, id_collection)
	);

CREATE TABLE IF NOT EXISTS TrackExecutor (
	id_track INTEGER REFERENCES Track(id),
	id_executor INTEGER REFERENCES Executor(id),
	CONSTRAINT TE PRIMARY KEY (id_track, id_executor)
	);
