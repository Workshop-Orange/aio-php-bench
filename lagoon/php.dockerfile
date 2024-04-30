ARG PVER=8.1

FROM amazeeio/php:$PVER-fpm

COPY web /app/web

COPY /lagoon/php-fpm.d/99-perform.conf /usr/local/etc/php/php-fpm.d/
COPY /lagoon/php-fpm.d/docker-php-ext-opcache.ini /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini

ENV WEBROOT=web
