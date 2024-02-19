#!/bin/bash

# wordpress configuration

# create wp instalation directory
mkdir -p /var/www/html

# waits until the conection with mariadb through port 3306 is stablished (nc = netcat). Waits 1 sec between tries
while ! nc -z mariadb 3306; do
    sleep 1
done

cd /var/www/html
rm -rf *

# Download wordpress
wp core download --locale=es_ES --allow-root

# create wp configuration file with specified database details (db name, user, password, host, language) 
wp --path=/var/www/html  config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${MYSQL_HOST} --locale=es_ES --allow-root --skip-check

# instal wordpress with provided parameters.
# change site title. create admin user (with name, password, email). Skip email send.
wp core install --path=/var/www/html --url=${DOMAIN_NAME} --title="INZEZION!!!" --admin_name=${WP_ADMIN_USER} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email="imontero@student.42urduliz.com" --skip-email --allow-root 

wp plugin install redis-cache --activate
wp config set WP_REDIS_HOST redis #--allow-root #I put --allowroot because i am on the root user on my VM
wp config set WP_REDIS_PORT 6379 --raw #--allow-root
wp config set WP_CACHE_KEY_SALT $DOMAIN_NAME #--allow-root
wp config set WP_REDIS_DATABASE "1"
#wp config set WP_REDIS_PASSWORD $REDIS_PASSWORD --allow-root
wp config set WP_REDIS_CLIENT phpredis #--allow-root
wp plugin install redis-cache --activate #--allow-root
wp plugin update --all #--allow-root
wp redis enable #--allow-root