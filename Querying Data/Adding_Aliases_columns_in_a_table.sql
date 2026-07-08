-- using aliases
select first_name as f_name from actors;
select last_name as "last name" from actors;

select 
    movie_name as "Movie Name",
    release_year as "Release Year" 
from movies;

-- using concatenation operator to create a full name column
select first_name || ' ' || last_name as full_name from actors;

-- the as keyword is optional, so you can also write the above query as
select 
    movie_name "Movie Name",
    release_year "Release Year"
from movies;

select first_name fs from actors;