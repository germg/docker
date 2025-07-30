# Defines the base image to be used
FROM mariadb:10.11

# Defines the arguments that should be entered
ARG MARIADB_DATABASE=my_database
ARG MARIADB_USER=my_user
ARG MYSQL_ROOT_PASSWORD=my_root_pass
ARG MARIADB_PASSWORD=my_user_pass

# Copy the initialization file to a temporary folder
COPY init.sql /tmp/init.sql

# Replaces the data and moves the initialization file
RUN sed -i "s/MARIADB_USER/$MARIADB_USER/g" /tmp/init.sql && \
    sed -i "s/MARIADB_DATABASE/$MARIADB_DATABASE/g" /tmp/init.sql && \
    sed -i "s/MARIADB_PASSWORD/$MARIADB_PASSWORD/g" /tmp/init.sql && \
    mv /tmp/init.sql /docker-entrypoint-initdb.d/init.sql

# Exposes the default port
EXPOSE 3306