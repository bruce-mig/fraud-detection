CREATE DATABASE customers;

-- Set the search path to include only the 'public' schema
SET search_path = public;

-- Create the 'customer_id_sequence' sequence
CREATE SEQUENCE customer_id_sequence
INCREMENT BY 50
START WITH 1
MINVALUE 1
NO MAXVALUE
CACHE 1;

-- Create the 'customers' table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    email varchar(255),
    first_name varchar(255),
    last_name varchar(255)
)
