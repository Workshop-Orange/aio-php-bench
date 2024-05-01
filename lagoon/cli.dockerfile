ARG PVER=8.1

FROM amazeeio/php:$PVER-cli
ARG LAGOON_BUILD_NAME

COPY web /app/web
COPY /lagoon/php-fpm.d/99-perform.conf /usr/local/etc/php/php-fpm.d/
COPY /lagoon/php-fpm.d/docker-php-ext-opcache.ini /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini

ENV DEMO_BUILD_NAME=$LAGOON_BUILD_NAME

RUN fix-permissions /app/web/storage
RUN chmod 777 /app/web/storage
