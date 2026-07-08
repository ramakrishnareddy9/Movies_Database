/*
order by clause is used to sort the data in ascending or descending order based on one or more columns. By default, the order by clause sorts the data in ascending order. To sort the data in descending order, we can use the DESC keyword after the column name.

syntax:
    select column1,column2,... from table_name
    order by 
        expression1 [ASC|DESC], 
        expression2 [ASC|DESC], ...;
by default, the order by clause sorts the data in ascending order. To sort the data in descending order, we can use the DESC keyword after the column name.
*/

-- 1. sort based on single column
select * from movies
order by releae_date asc;

-- 2.sort based on multiple columns
-- sort all movies based on releae_date in desending order and movie title in ascending order
select * from movies
order by 
    releae_date desc, 
    movie_name asc;