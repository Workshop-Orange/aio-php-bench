ARG PVER=8.1

FROM amazeeio/php:$PVER-cli

COPY web /app/web

RUN fix-permissions /app/web/storage
RUN chmod 777 /app/web/storage
