# How to use?

## Build container

Replace "my-mongo" with yours container's name and "7.0" with yours tag version. 

```shell
docker build -t my-mongo:7.0 -f Dockerfile .
```
## Run container

Replace arguments with yours credentials. Don't forget replace the container name and tag.

```shell
docker run --name my-mongo-container -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=my_admin_user -e MONGO_INITDB_ROOT_PASSWORD=my_admin_pass -e MONGO_DATABASE=my_db_app -e MONGO_USERNAME=my_user_app -e MONGO_PASSWORD=my_user_pass -d my-mongo:7.0
```