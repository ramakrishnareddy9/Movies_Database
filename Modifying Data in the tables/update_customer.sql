-- update a record in the customer table
update customer
set email = 'abc.gmail.com'
where customer_id = 1;

-- update multiple records in the customer table
update customer
set phone_number = '0000000000'
where age = 30;

--  using returning clause to get the updated data
update customer
set email = 'def.gmail.com'
where customer_id = 2
returning *;

-- update all records in the customer table
update customer
set phone_number = '9999999999';