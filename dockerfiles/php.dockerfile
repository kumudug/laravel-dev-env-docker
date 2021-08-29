FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

#id -u, id -g to find the group and user id
# Docs are from alpine linux. Not man pages https://wiki.alpinelinux.org/wiki/Setting_up_a_new_user
# This is so that the host machine permissions are set right
RUN addgroup -g 985 laravel && adduser -u 1000 -G laravel -g laravel -s /bin/sh -D laravel
 
USER laravel