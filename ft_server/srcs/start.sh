#!bin/bash

service mysql start
sq=$?
service nginx start
ng=$?
service php7.3-fpm start
ph=$?

while [ "$sq" = 0 ] && [ "$ng" = 0 ] &&  [ "$ph" = 0 ]
do
	sleep 10
	service mysql status > /dev/null
	sq=$?
	service nginx status > /dev/null
	ng=$?
	service php7.3-fpm status > /dev/null
	ph=$?
done

service mysql stop
service php7.3-fpm stop
service nginx stop

echo -e "sorry :)\nan issue occured causing the server to stop"