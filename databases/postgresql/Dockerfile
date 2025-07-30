# Defines the base image to be used
FROM postgres:16-alpine

# Defines the arguments that should be entered
ARG POSTGRES_DB=my_database
ARG POSTGRES_USER=my_user
ARG POSTGRES_USER_PASSWORD=my_user_pass

# Copy the initialization file to a temporary folder
COPY init.sql /tmp/init.sql

# Replaces the data and moves the initialization file
RUN sed -i "s/POSTGRES_USER/$POSTGRES_USER/g" /tmp/init.sql && \
    sed -i "s/POSTGRES_DB/$POSTGRES_DB/g" /tmp/init.sql && \
    sed -i "s/POSTGRES_USER_PASSWORD/$POSTGRES_USER_PASSWORD/g" /tmp/init.sql && \
    mv /tmp/init.sql /docker-entrypoint-initdb.d/init.sql

# Exposes the default port
EXPOSE 5432