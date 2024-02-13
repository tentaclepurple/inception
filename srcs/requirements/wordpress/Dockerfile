FROM debian:bullseye

COPY ./conf/setup.sh /tmp

RUN apt-get update && apt -y install curl wget netcat tar
RUN apt install -y php php-fpm php-mysql php-gd php-xml php-curl php-cgi php-pdo php-gd php-cli php-mbstring redis php-redis
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN rm -rf /var/lib/apt/lists/*
RUN chmod +x wp-cli.phar  && mv -f wp-cli.phar /usr/local/bin/wp
RUN chmod +x /tmp/setup.sh
RUN chmod +x /var/lib/redis

COPY ./conf/www.conf  /etc/php/7.4/fpm/pool.d/

RUN sed -i 's/^pid = \/run\/php\/php7\.4-fpm\.pid$/pid = \/var\/run\/php-fpm7.4.pid/' /etc/php/7.4/fpm/php-fpm.conf

EXPOSE 9000

CMD [ "sh", "-c", "./tmp/setup.sh && /usr/sbin/php-fpm7.4 -F" ]


#    COPY ./conf/setup.sh /tmp 
#Copies the setup.sh script
#from the local ./conf/ directory to the /tmp directory inside the Docker image.

#    RUN apt-get update && apt -y install curl wget netcat tar
#Updates the package index of the Debian system and installs several packages 
#(curl, wget, netcat, tar) using the apt package manager.

#    RUN apt install -y php php-fpm php-mysql php-gd php-xml php-curl
#Installs PHP and some PHP extensions necessary for WordPress.

#    RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#Downloads the WP-CLI (WordPress Command-Line Interface) tool.

#    RUN chmod +x wp-cli.phar && mv -f wp-cli.phar /usr/local/bin/wp
#Makes the downloaded wp-cli.phar executable 
#and moves it to /usr/local/bin/ so that it can be executed globally.

#    COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/
#Copies the www.conf file from the local ./conf/ directory to 
#/etc/php/7.4/fpm/pool.d/ directory inside the Docker image.
#This contains PHP-FPM pool configuration settings.

#    RUN sed -i 's/^pid = /run/php/php7.4-fpm.pid$/pid = /var/run/php-fpm7.4.pid/' /etc/php/7.4/fpm/php-fpm.conf
#Uses sed to modify the php-fpm.conf file, changing the location of the PHP-FPM process ID file.

#    EXPOSE 9000
#Informs Docker that the container will listen on the specified network ports at runtime

#    CMD [ "sh", "-c", "./tmp/setup.sh && /usr/sbin/php-fpm7.4 -F" ]
#Specifies the default command to run when the container starts.
#It runs the setup.sh script from /tmp/ and starts the PHP-FPM process in foreground mode (-F).