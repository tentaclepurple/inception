FROM debian:buster


RUN apt update -y

RUN apt install vsftpd -y

COPY ./conf/script.sh /


CMD ["/script.sh"]