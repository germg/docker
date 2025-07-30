-- Create a user with a password
CREATE USER 'MARIADB_USER'@'%' IDENTIFIED BY 'MARIADB_PASSWORD';

-- Grants all permissions to the user on the database
GRANT ALL PRIVILEGES ON MARIADB_DATABASE.* TO 'MARIADB_USER'@'%';

-- Update the privileges for the changes to take effect
FLUSH PRIVILEGES;