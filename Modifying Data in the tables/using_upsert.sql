/*
using upsert to insert or update a record in the customer table
1.  The idea is that when you insert a new row into the table, PostgreSQL will update the row if it already exists, otherwise, it will insert the new row.
    That is why we call the action is upsert (the combination of update or insert).
2.  Syntax : 
        INSERT INTO table_name (column_list)
        VALUES (value_list)
        ON CONFLICT target action;
3. for 'action'
    ON CONFLICT

    DO NOTHING

    means do nothing if the row already exists in the table.

    DO UPDATE SET column_1 = value_1
    WHERE condition

    update some fields in the table.

4.  This is similar to:
    INSERT INTO .... IF NOT EXIST
*/

-- creating sample table for upsert
create table t_tags (
    tag_id serial primary key,
    tag text unique ,
    update_date timestamp default now()
);

-- inserting a new record into the table
insert into t_tags(tag) values 
('tag1'),
('tag2'),
('tag3');

select * from t_tags;
-- time 2026-07-08 14:55:56.82837

-- lets insert a record, on conflict, do nothing
insert into t_tags(tag) values ('tag1')
on conflict(tag) do nothing;

SELECT * FROM t_tags;

--lets insert a record, on conflict, update the record
insert into t_tags(tag) values ('tag1')
on conflict(tag) 
do 
    update set
        tag =  EXCLUDE.tag, 
        update_date = now();