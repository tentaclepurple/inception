FROM debian:bullseye


RUN apt update -y

RUN apt install vsftpd -y

RUN chmod 777 ./conf/script.sh

COPY ./conf/script.sh /


CMD ["/script.sh"]