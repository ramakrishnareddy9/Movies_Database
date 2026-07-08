-- get all records from movies
select * from movies;
-- postgress evaluate the from clause before the select clause, so it will return all records from movies table and then filter the records based on the where clause

-- select spefic columns from movies table
select title,release_year from movies;

