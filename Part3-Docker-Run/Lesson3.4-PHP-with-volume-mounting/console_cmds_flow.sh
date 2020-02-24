# PHP-with-volume-mounting
# create container from php-image
docker run -it --rm -v ${PWD}:/my-files -w /my-files --name php-script php:7.4-cli /bin/bash

# create php-file from console of container:
echo '<?php echo "ml test";' > index.php

# exit from container and try to run:
docker run -it --rm -v ${PWD}:/my-files -w /my-files --name php-script php:7.4-cli php index.php