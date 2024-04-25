FROM amazeeio/php:8.1-cli
COPY bench.php /app
COPY web /app/web
RUN fix-permissions /app/web/storage
RUN chmod 777 /app/web/storage
