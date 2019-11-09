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

valet install --with-mariadb


##################################################################################################
## Create Sample site

mkdir ~/work/sites
cd ~/work/sites
valet park

mkdir ~/work/sites/info
cd ~/work/sites/info
echo "<?php phpinfo();" > index.php

echo "Please check: https://info.test/";

##################################################################################################
## Incase of issues. Troubleshoots with following steps

## Issue 1: Maybe issue with elastic search conf file. (https://github.com/weprovide/valet-plus/issues/391)

# Run below command.
# sudo nginx -t
#
# IF output is similer to below.
# 	nginx: [emerg] open() "/usr/local/etc/nginx/valet/elasticsearch.conf" failed (2: No such file or directory) in /usr/local/etc/nginx/nginx.conf:44
# 	nginx: configuration file /usr/local/etc/nginx/nginx.conf test failed
#
# Run below commands. Reference : https://github.com/weprovide/valet-plus/issues/391#issuecomment-522328775
# sudo cp ~/.composer/vendor/weprovide/valet-plus/cli/stubs/elasticsearch.conf /usr/local/etc/nginx/valet/elasticsearch.conf
# sudo sed -i '' 's/VALET_DOMAIN/test/g' /usr/local/etc/nginx/valet/elasticsearch.conf
# valet restart

##################################################################################################
## To uninstall valet plus
# https://gist.githubusercontent.com/dannygsmith/5b74ba708d7bf8621c1cb6b959ece99f/raw/f1b0e88ba4e0a753b112bd2187c22bf8eaa9a234/valet-plus-destroy


