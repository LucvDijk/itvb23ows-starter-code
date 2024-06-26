FROM php:7.4-apache

WORKDIR /var/www/html

RUN apt-get update -y && apt-get install -y libmariadb-dev && apt-get clean

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN chmod -R 755 /var/www/html
