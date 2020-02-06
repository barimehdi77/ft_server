cd /var/www/ft_server/

wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages phpmyadmin
rm -rf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv /tmp/phpmyadmin/config.inc.php /var/www/ft_server/phpmyadmin/config.inc.php