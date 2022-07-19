CREATE TABLE IF NOT EXISTS Genres (
	ID SERIAL PRIMARY KEY,
	Title VARCHAR(60)
);

CREATE TABLE IF NOT EXISTS Executors (
	ID SERIAL PRIMARY KEY,
	Nickname VARCHAR(60),
	Genre VARCHAR(60)
);

CREATE TABLE IF NOT EXISTS Albums (
	ID SERIAL PRIMARY KEY,
	Title VARCHAR(60),
	Year_of_release DATE,
	Executor VARCHAR(60)
);

CREATE TABLE IF NOT EXISTS Tracks (
	ID SERIAL PRIMARY KEY,
	Title VARCHAR(60),
	Duration TIME,
	Album VARCHAR(60) REFERENCES Albums(ID)
);

CREATE TABLE IF NOT EXISTS Collection (
	ID SERIAL PRIMARY KEY,
	Title VARCHAR(60),
	Year_of_release DATE
);


CREATE TABLE IF NOT EXISTS Executors_Genres (
	ID SERIAL PRIMARY KEY,
	Executor_id integer REFERENCES Executors(ID),
	Genre_id integer REFERENCES Genres(ID)
);

CREATE TABLE IF NOT EXISTS Executors_Albums (
	ID SERIAL PRIMARY KEY,
	Album_id integer REFERENCES Albums(ID),
	Executor_id integer REFERENCES Executors(ID) 
);

CREATE TABLE IF NOT EXISTS Collections_Tracks (
	ID SERIAL PRIMARY KEY,
	Track_id integer REFERENCES Tracks(ID),
	Collection_id integer REFERENCES Collection(ID)
);
