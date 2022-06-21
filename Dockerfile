FROM ubuntu:22.04
RUN apt-get update
RUN apt-get -y install apache2

EXPOSE 80
ADD site /var/www/html
CMD /usr/sbin/apache2ctl -D FOREGROUND
