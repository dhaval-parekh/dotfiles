## Uses: bash valet-plus.sh

##################################################################################################
## Install Valet Plus
## Reference: https://github.com/weprovide/valet-plus#installation
brew update

brew tap henkrehorst/php

brew install valet-php@7.2

brew install composer # This one is already installed.

composer global require weprovide/valet-plus

valet fix

valet install


##################################################################################################
## Create Sample site

mkdir ~/work/sites
cd ~/work/sites
valet park

mkdir ~/work/sites/info
cd ~/work/sites/info
echo "<?php phpinfo();" > index.php

echo "Please check: https://info.test/";