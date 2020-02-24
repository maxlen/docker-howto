# run docker-container from image ubuntu
docker run -it ubuntu /bin/bash

# start docker-container when it stops
docker start container_name

# attach docker-container (like exec + bash)
docker attach container_name

# stop docker-container
docker stop container_name

# remove docker-container
docker rm container_name