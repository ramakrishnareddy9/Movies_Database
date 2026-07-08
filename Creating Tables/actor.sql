-- actors table
create table actors(
	actor_id serial primary key,
	first_name varchar(150),
	last_name varchar(150) not null,
	gender char(1),
	date_of_birth date,
	update_date date
);
