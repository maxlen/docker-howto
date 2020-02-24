# show list of all networks
docker network ls

# remove all networks not used by at least one container (now)
docker network prune

# run httpd-container
docker run --rm --name my-webserver -d httpd

# get info about network/s used by container with name my-webserver
docker inspect my-webserver

# open browser and get ip-adress from info (from docker inspect ...) and we can se nothing.
# Cause we weren't expose+map port

# tets try to get this page from other container (by curl)
docker run --rm tom1808/mycurl my-webserver
# it woudn't work

# tets try to do it by ip
docker run --rm tom1808/mycurl 172.17.0.1
# it works

# lets create simple-network
docker network create simple-network

# and run httpd-container again but with this network
docker run --rm -d --name my-webserver --network simple-network httpd

# and now run curl-container with this network too
docker run --rm tom1808/mycurl --network simple-network my-webserver
# it works! curl-container can get http-container throught simple-network

# ok. So lets stop container and remove network
docker stop my-webserver
docker network rm simple-network

