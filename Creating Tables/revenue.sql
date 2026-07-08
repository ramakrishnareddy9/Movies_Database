-- movies revenue
create table movie_revenue(
	revenue_id serial primary key,
	movie_id int references movies (movie_id),
	revenue_domestic numeric(10,2),
	revenue_internationsl numeric(10,2)
);