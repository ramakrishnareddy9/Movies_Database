-- insert single record into customer table
insert into customer(first_name,last_name,email,phone_number) 
values ('John','Doe','john.doe@example.com','1234567890');

-- insert multiple records into customer table
insert into customer(first_name,last_name,email,phone_number)
values
    ('Jane','Smith','jane.smith@example.com','0987654321'),
    ('Alice','Johnson','alice.johnson@example.com','1122334455');

-- insert data that has quotes in the name
insert into customer(first_name,last_name,email,phone_number)
values ('O''Connor','Patrick','patrick.o''connor@example.com','1112223333');

-- using returning clause to get the inserted data
insert into customer(first_name,last_name,email,phone_number)
values ('Emily','Brown','emily.brown@example.com','5556667777')
returning *;

select * from customer;