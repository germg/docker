# How to use?

## Build container

Replace "my-mysql" with yours container's name and "8" with yours tag version. 

```shell
docker build -t my-mysql:8 -f Dockerfile .
```
## Run container

Replace arguments with yours credentials. Don't forget replace the container name and tag.

```shell
docker run --name my-mysql8-container -p 3306:3306 -e MYSQL_ROOT_PASSWORD=myrootpassword -e MYSQL_DATABASE=mydatabase -e MYSQL_USER=new_user -e MYSQL_PASSWORD=new_pass -d my-mysql:8
```