# How to use?

## Build container

Replace "my-mariadb" with yours container's name and "10.11" with yours tag version. 

```shell
docker build -t my-mariadb:10.11 -f Dockerfile .
```
## Run container

Replace arguments with yours credentials. Don't forget replace the container name and tag.

```shell
docker run --name my-mariadb-container -p 3306:3306 -e MARIADB_ROOT_PASSWORD=my_root_pass -e MARIADB_DATABASE=my_database -e MARIADB_USER=my_user -e MARIADB_PASSWORD=my_user_password -d my-mariadb:10.11
```