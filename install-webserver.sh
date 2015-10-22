#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl 

git clone https://github.com/jhajek/itmo-544-444-fall2015.git

mv ./itmo-544-444-fall2015/images /var/www/html/images
mv ./itmo-544-444-fall2015/index.html /var/www/html
mv ./itmo-544-444-fall2015/*.php /var/www/html

curl -sS https://getcomposer.org/installer | php &> /tmp/getcomposer.txt

php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

mv vendor /var/www/html &> /tmp/movevendor.txt

echo "Hello!" > /tmp/hello.txt

