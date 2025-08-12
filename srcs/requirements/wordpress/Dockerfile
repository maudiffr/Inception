FROM	debian:11

RUN	apt-get update -y && apt-get upgrade -y

RUN apt-get install wget php7.4 php-fpm php-mysql mariadb-client -y

RUN wget https://fr.wordpress.org/wordpress-6.7-fr_FR.tar.gz -P /var/www

RUN cd /var/www && tar -xzf wordpress-6.7-fr_FR.tar.gz && rm wordpress-6.7-fr_FR.tar.gz

RUN chown -R root:root /var/www/wordpress

RUN chmod 755 /var/www/wordpress

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

COPY conf/auto_config.sh /usr/local/bin/auto_config.sh

RUN chmod +x /usr/local/bin/auto_config.sh

ENTRYPOINT ["auto_config.sh"]
