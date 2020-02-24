# run docker-container from image ubuntu with shared directory with host machine
docker run --rm -v ${PWD}:/myvol ubuntu /bin/bash -c "ls -lha > /myvol/myfile.txt"

# unpackage some archive throught container and remove it
# https://hub.docker.com/r/klutchell/rar
# flag -w for working directory (like cd)
docker run --rm -v ${PWD}:/files -w /files klutchell/rar a /files/myrar.rar /files/myfile.txt