# build image and tag it
docker build -t myphpapp .

# run image
docker run myphpapp .

# remove container
docker rm cont_name

# remove image
docker rmi myphpapp