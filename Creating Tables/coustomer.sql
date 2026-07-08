create table customer(
    customer_id serial primary key,
    first_name varchar(150),
    last_name varchar(150) not null,
    email varchar(150) not null,
    phone_number varchar(10)
);
