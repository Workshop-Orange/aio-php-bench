FROM amazeeio/php:8.2-fpm

COPY web /app/web
ENV WEBROOT=web
