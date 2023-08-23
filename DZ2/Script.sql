CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year_release int NOT NULL
	);

CREATE TABLE IF NOT EXISTS Executor (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
	);

CREATE TABLE IF NOT EXISTS AlbumExecutor (
	id_album INTEGER REFERENCES Album(id),
	id_executor INTEGER REFERENCES Executor(id),
	CONSTRAINT PK PRIMARY KEY (id_album, id_executor)
	);

CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
	);

CREATE TABLE IF NOT EXISTS ExecutorGenre (
	id_genre INTEGER REFERENCES Genre(id),
	id_executor INTEGER REFERENCES Executor(id),
	CONSTRAINT GE PRIMARY KEY (id_genre, id_executor)
	);
	
CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	id_album INTEGER NOT NULL REFERENCES Album(id),
	name VARCHAR(60) NOT NULL,
	duration TIME NOT NULL
	);
	
CREATE TABLE IF NOT EXISTS Сollection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year_release int NOT NULL
	);
	
CREATE TABLE IF NOT EXISTS TrackСollection (
	id_track INTEGER REFERENCES Track(id),
	id_collection INTEGER REFERENCES Сollection(id),
	CONSTRAINT TC PRIMARY KEY (id_track, id_collection)
	);