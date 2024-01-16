FROM debian:bullseye

RUN apk update && apk upgrade && apk add --no-cache  \
    apache2 \
    && rm -f /var/cache/apk/*

COPY ./conf /var/www/localhost/htdocs

ENTRYPOINT ["httpd", "-DFOREGROUND"]