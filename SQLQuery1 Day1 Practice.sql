 

 -- creating a trable
 -- DDL DATA DEFINITION LANGUAGE
 create table sk(
   order_id integer,
   order_data date,
   customer_name varchar(30),
   product_name varchar(30),
   price decimal(10,2),
   payment_method varchar(15)
);

-- inserting values
--DML DATA MANIPULATION LANGUAGE
insert into sk values(1,'2024-12-12','vishal','Bat',150.50,'UPI');
insert into sk values(2,'2024-12-13','sarthak','Ball',50,'Credit Card');
insert into sk values(3,'2024-12-12','ronak','Bails',100,'UPI');
insert into sk values(4, '2024-01-04', 'Ayush', 'Keyboard', 900, 'UPI');


-- DQL DATA QUERY LANGUAGE
select * from sk;


-- Limiting Column
-- This command selects and displays only the 'order_id', 'customer_name';
select order_id, customer_name from sk;

--- Limiting the rows
select top 3 * from sk;


-- Change column data type and size
-- These commands alter the data type of the  
--   'price' column to 'INTEGER'   

alter table sk alter column price integer;


-- Adding new column in table
-- This command adds a new column named 'address' with a varchar 
-- data type and a maximum length of 30 to the 'sk' table.

alter table sk add address varchar(30);

-- Inserting values into the new column (corrected method)
-- These commands update the 'address' column for the specific 
-- rows based on 'order_id'.

update sk set address = 'value1' where order_id = 1;
update sk set address = 'value2' where order_id = 2;
update sk set address = 'value3' where order_id = 3;


-- Drop the new column
-- This command drops the 'address' column from the 'sk' table.
alter table sk drop column address;



-- Delete rows with NULL order_id
-- This command deletes rows from the 'sk' table
-- where the 'order_id' column has NULL values.
 
 delete from sk where order_id is null;


 -- Sort the data
-- This command selects and displays all data from the
-- 'sk' table and sorts it by 'price' in ascending order
-- and by 'customer_name' in descending order.
select * from sk order by price, customer_name desc;
select * from sk order by customer_name desc;