# Use the official MongoDB image
FROM mongo:7.0

# Defines arguments for the build, with default values
ARG MONGO_INITDB_ROOT_USERNAME=mongoadmin
ARG MONGO_INITDB_ROOT_PASSWORD=mi_pass_de_admin

# Converts ARGs to ENVs so they are available in the container
ENV MONGO_INITDB_ROOT_USERNAME=${MONGO_INITDB_ROOT_USERNAME}
ENV MONGO_INITDB_ROOT_PASSWORD=${MONGO_INITDB_ROOT_PASSWORD}

# Copy the initialization script
COPY init.sh /docker-entrypoint-initdb.d/init.sh

# Exposes the default port
EXPOSE 27017