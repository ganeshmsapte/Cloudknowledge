FROM centos:latest
MAINTAINER ganesh.m.sapte@gmail.com
RUN yum install -y http \
   zip \
   unzip 
ADD
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", ".D", "FOREGROUND"]
EXPOSE 80
