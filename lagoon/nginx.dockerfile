FROM uselagoon/nginx

COPY lagoon/nginx.conf /etc/nginx/conf.d/app.conf

COPY web /app/web

ENV WEBROOT=web