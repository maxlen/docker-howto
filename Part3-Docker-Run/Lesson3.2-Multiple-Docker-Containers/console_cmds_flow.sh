# run docker-container from image ubuntu
# with name linux1, detached and remove when it stops
docker run -it -d --rm  --name linux1 ubuntu /bin/bash

# run other docker-container from image ubuntu
# with name linux2, detached and remove when it stops
docker run -it -d --rm  --name linux2 ubuntu /bin/bash

#try to create files in each container. And they will be isolated

docker stop linux1 linux2

docker rm linux1 linux2