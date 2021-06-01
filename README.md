# ✅ Ft_Server

- Actual Status : Finished
- Result        : 100%
- Observations : The best is to run the container with daemon off and detached (not usefull here but it's to kubernetes project)
# 🤔 Description
This project serves as an introduction into system administration. It reveals the importance of using scripts to automate tasks, and the purpose behind using Docker and Docker containers. The aim of the project is to run a server on a Debian Buster OS inside a Docker container. The server must run WordPress, phpMyAdmin and MySQL.

# ⚙️ Usage
 **CMD build:**<br>
 `$> docker build -t name .`<br>
 **CMD run:**<br>
 `$> docker run --name aname -it -p 80:80 -p 443:443 name`<br>

# 👨‍💻 Resources :
  - [Creating a Self-Signed SSL Certificate](https://linuxize.com/post/creating-a-self-signed-ssl-certificate/)
  - [How To Install Linux, Nginx, MySQL, PHP (LEMP stack) in Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-in-ubuntu-16-04)
  - [OpenSSL Essentials: Working with SSL Certificates, Private Keys and CSRs](https://www.digitalocean.com/community/tutorials/openssl-essentials-working-with-ssl-certificates-private-keys-and-csrs)
  - [How to Create MySQL Users Accounts and Grant Privileges
](https://linuxize.com/post/how-to-create-mysql-user-accounts-and-grant-privileges/)
  - [How To Install WordPress with LAMP on Debian 9
](https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-lamp-on-debian-9)
  - [How To Install phpMyAdmin From Source on Debian 10
](https://www.digitalocean.com/community/tutorials/how-to-install-phpmyadmin-from-source-debian-10)
