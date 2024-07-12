CREATE DATABASE customer;

-- Set the search path to include only the 'public' schema
SET search_path = public;

-- Create the 'customer_id_sequence' sequence
--CREATE SEQUENCE customer_id_seq
--INCREMENT BY 50
--START WITH 1
--MINVALUE 1
--NO MAXVALUE
--CACHE 1;

-- Create the 'customer' table
CREATE TABLE customer (
    id SERIAL PRIMARY KEY,
    email varchar(255),
    first_name varchar(255),
    last_name varchar(255)
)

CREATE TABLE fraud_check_history (
    id SERIAL PRIMARY KEY,
    customer_id INT,
    is_fraudster BOOLEAN,
    create_at TIMESTAMP
)

CREATE TABLE Notification (
    notification_id SERIAL PRIMARY KEY,
    to_customer_id INT,
    to_customer_email VARCHAR(255),
    sender VARCHAR(255),
    message TEXT,
    sent_at TIMESTAMP
);