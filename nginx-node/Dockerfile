FROM debian:10.12

ARG PHP_VERSION=7.3

# Update packets
RUN apt update && apt upgrade -y

# Install nginx and PHP-FPM
RUN apt install -y mc nginx php${PHP_VERSION}-fpm

# Directory with PHP file
COPY ./site/ /var/www/html

# Main nginx conf
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Virtual Host Server nginx conf
COPY conf/server.conf /etc/nginx/conf.d/server.conf

# PHP-FPM conf
COPY conf/www.conf /etc/php/${PHP_VERSION}/fpm/pool.d/www.conf

# Start script
COPY start.sh /start.sh

# Start PHP-FPM and Nginx
CMD ["bash", "/start.sh"]