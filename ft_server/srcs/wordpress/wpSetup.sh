cd /var/www/ft_server/

wget https://wordpress.org/latest.tar.gz
tar xvf latest.tar.gz
mv latest.tar.gz wordpress
mv /tmp/wordpress/wp-config.php /var/www/ft_server/wordpress/wp-config.php
chown -R www-data:www-data /var/www/ft_server