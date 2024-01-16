FROM debian:bullseye

RUN apt update && apt upgrade && apt add --no-cache  \
    apache2 \
    && rm -f /var/cache/apk/*

COPY ./conf /var/www/localhost/htdocs

ENTRYPOINT ["httpd", "-DFOREGROUND"]