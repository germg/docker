# Defines the base image to be used
FROM mysql:8.0

# Defines the arguments that should be entered
ARG MYSQL_DATABASE=my_database
ARG MYSQL_USER=my_user
ARG MYSQL_ROOT_PASSWORD=my_root_pass
ARG MYSQL_PASSWORD=my_user_pass

# Copy the initialization file to a temporary folder
COPY ./init.sql /tmp/init.sql

# Replaces the data and moves the initialization file
RUN sed -i "s/\${MYSQL_USER}/$MYSQL_USER/g" /tmp/init.sql && \
    sed -i "s/\${MYSQL_DATABASE}/$MYSQL_DATABASE/g" /tmp/init.sql && \
    sed -i "s/\${MYSQL_PASSWORD}/$MYSQL_PASSWORD/g" /tmp/init.sql && \
    mv /tmp/init.sql /docker-entrypoint-initdb.d/init.sql

# Exposes the default port
EXPOSE 3306