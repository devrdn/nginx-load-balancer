# Logging
ln -sf /proc/1/fd/1 /var/log/nginx/error.log
ln -sf /proc/1/fd/1 /var/log/nginx/access.log
# Set owner and group www-data to html directory
chown www-data:www-data -R /var/www/html
# Start services: nginx and php-fpm
service php7.3-fpm start
service nginx start
