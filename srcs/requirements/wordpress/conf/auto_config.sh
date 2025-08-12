#!/bin/bash

sleep 10

php wp-cli.phar config create --allow-root \
	--dbname=$SQL_DATABASE \
	--dbuser=$SQL_USER \
	--dbpass=$SQL_PASSWORD \
	--dbhost=mariadb:3306 --path='/var/www/wordpress'

php wp-cli.phar core install --url=$DOMAIN_NAME \
	--title=$WP_TITLE \
	--admin_user=$WP_ADMIN_USER \
	--admin_password=$WP_ADMIN_PASSWORD \
	--admin_email=$WP_ADMIN_EMAIL \
	--locale=$LANGUAGE \
	--skip-email --path='/var/www/wordpress' \
	--allow-root

php wp-cli.phar user create $WP_USER $WP_EMAIL \
	--role=author \
	--user_pass=$WP_PASSWORD \
	--path='/var/www/wordpress' \
	--allow-root

mkdir /run/php

/usr/sbin/php-fpm7.4 -F
