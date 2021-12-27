FROM ubuntu:20.04
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install apache2 -y
COPY index.html /var/www/html/index.html
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
