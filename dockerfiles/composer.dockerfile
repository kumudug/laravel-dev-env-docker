FROM composer:2.1.6

ARG USER_ID

ARG GROUP_ID

#id -u, id -g to find the group and user id
# Docs are from alpine linux. Not man pages https://wiki.alpinelinux.org/wiki/Setting_up_a_new_user
# This is so that the host machine permissions are set right
RUN addgroup -g $GROUP_ID laravel && adduser -u $USER_ID -G laravel -g laravel -s /bin/sh -D laravel
 
USER laravel

WORKDIR /var/www/html

ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]
