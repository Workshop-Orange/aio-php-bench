ARG PVER=8.1

FROM amazeeio/php:$PVER-fpm

COPY web /app/web

ENV WEBROOT=web
