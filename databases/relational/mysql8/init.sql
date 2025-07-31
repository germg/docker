-- Create a user with a password
CREATE USER 'myuser'@'%' IDENTIFIED BY 'mi_pass_de_usuario';

-- Grants all permissions to the user on the database
GRANT ALL PRIVILEGES ON mydatabase.* TO 'myuser'@'%';

-- Update the privileges for the changes to take effect
FLUSH PRIVILEGES;