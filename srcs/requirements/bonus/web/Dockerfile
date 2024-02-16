# FROM debian:bullseye

# RUN apt update && apt upgrade -y && apt install -y \
#     apache2 \
#     && rm -rf /var/lib/apt/lists/*

# #RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf


# COPY ./conf/index.html /var/www/html/

# ENTRYPOINT ["apache2ctl", "-DFOREGROUND"]

FROM debian:bullseye

    RUN apt update && apt upgrade -y && apt install -y \
    nginx \
    && rm -rf /var/lib/apt/lists/*


#COPY ./conf/index.html /usr/share/nginx/html
COPY ./conf/index.html /var/www

EXPOSE 7070

CMD ["nginx", "-g", "daemon off;"]

