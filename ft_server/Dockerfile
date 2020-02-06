#==============================================>Manual of The Server<==============================================#
#   To Build The Server : docker build -t ft_server .                                                              #
#   To Run The Server : docker run -it -p 80:80 -p 443:443 --name ft_server ft_server                              #
#   To Stop The Server : docker stop ft_server                                                                     #
#   To Open The Terminal of the Container : docker exec -it ft_server bash                                         #
#==================================================================================================================#  


# Get the debian 10 Buster from Docker Hub
FROM debian:buster


#UPDATE & INSTALL PACKAGES
RUN apt-get update 
RUN apt-get upgrade -y 
RUN apt-get -y install nginx
RUN apt-get install openssl -y
RUN apt-get install php7.3-fpm -y
RUN apt-get install mariadb-server -y
RUN apt-get -y install wget
RUN apt-get install php-mbstring php-zip php-gd php-xml php-pear php-gettext php-cli php-cgi -y
RUN apt-get -y install php-mysql


# Setup The Files in Docker Continer
COPY srcs /tmp
COPY srcs/start.sh ./
RUN mkdir -p /var/www/ft_server


# create SSL certificate
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/CN=ft_server"


#NGINX config
RUN mv /tmp/nginx/default /etc/nginx/sites-available/default
RUN mv /var/www/html/index.nginx-debian.html /var/www/ft_server/index.nginx-debian.html


#Command reun in Shell
RUN mkdir -p /var/www/ft_server
	#PHPMYADMIN Config
RUN bash /tmp/phpmyadmin/phpSetup.sh
	#WordPress Config
RUN bash /tmp/wordpress/wpSetup.sh
	#DataBase Config
RUN bash /tmp/database/DBsetup.sh


# ENTRYPOINT
CMD bash start.sh