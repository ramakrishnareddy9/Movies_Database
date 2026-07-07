-- directors table
create table directors(
	directors_id serial primary key,
	first_name varchar(150),
	last_name varchar(150) not null,
	date_of_birth date,
	nationality varchar(20),
	add_date date,
	update_date date
);