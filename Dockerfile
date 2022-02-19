FROM centos:latest
MAINTAINER ganesh.m.sapte@gmail.com
RUN yum update -y
RUN yum install -y httpd
RUN yum install zip
RUN yum install unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/blugoon.zip /var/www/html
WORKDIR /var/www/html
RUN unzip blugoon.zip
RUN cp -rvf 2116_blugoon/* .
RUN rm -rf blugoon.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
