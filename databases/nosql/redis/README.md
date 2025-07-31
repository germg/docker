# How to use?

## Build container

Replace "my-mongo" with yours container's name and "7.0" with yours tag version. 

```shell
docker build -t my-redis:7 -f Dockerfile .
```
## Run container

Replace arguments with yours credentials. Don't forget replace the container name and tag.

```shell
docker run --name my-redis-container -p 6379:6379 -e REDIS_PASSWORD=my_redis_pass -d my-redis:7
```