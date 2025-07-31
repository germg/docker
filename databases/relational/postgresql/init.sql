-- Create a user with a password
CREATE USER POSTGRES_USER WITH PASSWORD 'POSTGRES_USER_PASSWORD';

-- Create the database
CREATE DATABASE POSTGRES_DB;

-- Grants all permissions to the user on the database
GRANT ALL PRIVILEGES ON DATABASE POSTGRES_DB TO POSTGRES_USER;