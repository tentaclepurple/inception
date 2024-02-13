FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y \
    apache2 \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8888


COPY ./conf/index.html /var/www/html/

ENTRYPOINT ["apache2ctl", "-DFOREGROUND"]
