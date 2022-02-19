FROM centos:latest
MAINTAINER ganesh.m.sapte@gmail.com
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/blugoon.zip /tmp
WORKDIR /tmp
RUN unzip blugoon.zip
RUN cp -rvf 2116_blugoon/* .
RUN rm -rf blugoon.zip
EXPOSE 80
