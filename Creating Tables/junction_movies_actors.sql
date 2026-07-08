-- creating a junction table of movies and actors

create table movies_actors (
	movie_id int references movies (movie_id),
	actor_id int references actors (actor_id),
	primary key (movie_id,actor_id)
);