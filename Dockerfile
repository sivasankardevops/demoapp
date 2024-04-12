FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install apache2 -y
EXPOSE 80
COPY index.html /var/www/html/
CMD ["apachectl", "-D", "FOREGROUND"]