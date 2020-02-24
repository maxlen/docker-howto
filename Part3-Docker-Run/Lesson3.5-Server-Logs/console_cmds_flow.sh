# create container from image with port mapping and volume mointing
docker run -d -p 8080:80 -v ${PWD}:/var/www/html php:7.4-apache

# show docker-logs
docker logs containter_name -f

# go to http://localhost:8080/

# show info about container
docker inspect container_name