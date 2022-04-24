FROM ubuntu:latest
RUN apt-get update &&\
    DEBIAN_FRONTEND=noninteractive \
    TZ=Asia/Kathmandu \
    apt-get install -y apache2
COPY html/* /var/www/html/
WORKDIR /var/www/html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]

