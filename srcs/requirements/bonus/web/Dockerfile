FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y \
    apache2 \
    && rm -rf /var/lib/apt/lists/*

COPY ./conf /var/www/localhost/htdocs

ENTRYPOINT ["web", "-DFOREGROUND"]
