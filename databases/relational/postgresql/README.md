# How to use?

## Build container

Replace "my-postgresql" with yours container's name and "10.11" with yours tag version. 

```shell
docker build -t my-postgresql:16 -f Dockerfile .
```
## Run container

Replace arguments with yours credentials. Don't forget replace the container name and tag.

```shell
docker run --name my-postgresql-container -p 5432:5432 -e POSTGRES_PASSWORD=my_root_password -e POSTGRES_DB=my_database -e POSTGRES_USER=my_user -e POSTGRES_USER_PASSWORD=my_user_pass -d my-postgresql:16
```