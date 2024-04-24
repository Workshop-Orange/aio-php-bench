FROM uselagoon/nginx

COPY web /app

ENV WEBROOT=web
