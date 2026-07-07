-- Creating the movies table with a foreign key
create table movies(
	movie_id serial primary key,
	movie_name varchar(100) not null,
	movie_length int,
	movie_language varchar(20),
	age_certificate varchar(10),
	releae_date date,
	director_id int references directors (directors_id)
);