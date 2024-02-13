
FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl

RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/nginx/ssl/imontero.key \
	-out /etc/nginx/ssl/imontero.crt \
	-subj "/CN=imontero.42.fr"

COPY ./conf/nginx.conf /etc/nginx/conf.d
COPY ./tools/index.html /usr/share/nginx/html/

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]




# 		Update the package index and install Nginx and OpenSSL
# RUN apt-get update && apt-get install -y nginx openssl

# 		Create a directory for SSL certificates
# RUN mkdir /etc/nginx/ssl

# 		Generate a self-signed SSL certificate
# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
#    -keyout /etc/nginx/ssl/imontero.key \
#    -out /etc/nginx/ssl/imontero.crt \
#    -subj "/CN=imontero.42.fr"

# 		Copy the Nginx configuration file
# COPY ./conf/nginx.conf /etc/nginx/conf.d

# 		Copy an HTML file to the default Nginx HTML directory
# COPY ./tools/index.html /usr/share/nginx/html/

# 		Expose port 443 for HTTPS
# EXPOSE 443

# 		Run Nginx with the specified configuration
# CMD [ "nginx", "-g", "daemon off;" ]
