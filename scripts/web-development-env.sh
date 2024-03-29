## bash web-development-env.sh

## Install phpcs, phpcbf
composer global require "squizlabs/php_codesniffer=*"

## Install wpcs

mkdir ~/coding-standard
cd ~/coding-standard

git clone https://github.com/WordPress/WordPress-Coding-Standards.git wpcs
cd ~/coding-standard/wpcs
git checkout master

cd ~/coding-standard
git clone https://github.com/Automattic/VIP-Coding-Standards.git wpvipcs
cd ~/coding-standard/wpvipcs
git checkout master

cd ~/coding-standard
git clone https://github.com/PHPCompatibility/PHPCompatibility.git
cd ~/coding-standard/PHPCompatibility
git checkout master

cd ~/coding-standard
git clone git@github.com:PHPCompatibility/PHPCompatibilityWP.git
cd ~/coding-standard/PHPCompatibilityWP
git checkout master

cd ~/coding-standard
git clone git@github.com:PHPCompatibility/PHPCompatibilityParagonie.git
cd ~/coding-standard/PHPCompatibilityParagonie
git checkout master


phpcs --config-set installed_paths /Users/dhavalparekh/coding-standard/wpcs/WordPress,/Users/dhavalparekh/coding-standard/wpcs/WordPress-Core,/Users/dhavalparekh/coding-standard/wpcs/WordPress-Docs,/Users/dhavalparekh/coding-standard/wpcs/WordPress-Extra,/Users/dhavalparekh/coding-standard/wpvipcs/WordPress-VIP-Go,/Users/dhavalparekh/coding-standard/wpvipcs/WordPressVIPMinimum,/Users/dhavalparekh/coding-standard/PHPCompatibilityParagonie/PHPCompatibilityParagonieSodiumCompat,/Users/dhavalparekh/coding-standard/PHPCompatibilityParagonie/PHPCompatibilityParagonieRandomCompat,/Users/dhavalparekh/coding-standard/PHPCompatibility/PHPCompatibility,/Users/dhavalparekh/coding-standard/PHPCompatibilityWP/PHPCompatibilityWP


mkdir ~/work
cd ~/work
svn co https://develop.svn.wordpress.org/trunk wordpress-trunk



