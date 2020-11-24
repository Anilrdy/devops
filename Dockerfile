FROM ubuntu:16.04
MAINTAINER ANEESH
RUN apt update
RUN apt install apache2 wget unzip -y
COPY web.tgz /var/www/html/
RUN cd /var/www/html/ && tar -xzf web.tgz 
EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]   #######  /usr/sbin/httpd –D FOREGROUND
WORKDIR /var/www/html/

