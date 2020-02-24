# build docker image with tag
docker build -t mycurl .

# try to
docker run mycurl google.com

docker rm container_name

# OR remove all stopped containers
docker system prune

# login to docker
docker login

# re-tag image
docker tag mycurl maxlenash/mycurl:latest

# lets see
docker image ls | grep maxlenash
# maxlenash/mycurl                               latest              5fb1508ea566        About a minute ago   8.52MB

# push image to docker-hub
docker push maxlenash/mycurl:latest

docker rmi mycurl maxlenash/mycurl

# now we can execute
docker run --rm maxlenash/mycurl google.com

# and remove an image
docker rmi mycurl maxlenash/mycurl
