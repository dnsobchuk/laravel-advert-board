FROM php:8-fpm

RUN apt-get update && docker-php-ext-install pdo_mysql \
    && docker-php-ext-enable pdo_mysql

WORKDIR /var/www
