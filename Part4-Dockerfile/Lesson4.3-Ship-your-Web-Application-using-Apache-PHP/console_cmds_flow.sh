# build docker image with tag
docker build -t myphpapp:apache .

# run container
docker run --name myphp-apache -p 8080:80 myphpapp:apache


docker stop cont_name
docker rm cont_name
docker rmi myphpapp:apache
