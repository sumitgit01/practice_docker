FROM centos:latest
MAINTAINER sumitjoshi1988@gmail.com
RUN yum install -y https
 	zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf  _MAOSX markups-kindle kindle.zip
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
