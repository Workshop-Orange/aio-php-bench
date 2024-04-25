FROM uselagoon/nginx

COPY web /app/web

ENV WEBROOT=web
