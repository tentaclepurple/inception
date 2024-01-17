FROM debian:bullseye

RUN		apt-get update
RUN		apt-get install -y redis \
		&& rm -rf /var/lib/apt/lists/*
RUN 	chmod +x /var/lib/redis
RUN 	chmod +x /tmp

ARG     USER_ID=${USER_ID}
ARG     GROUP_ID=${GROUP_ID}

# add redis user and group with current host userid and groupid
RUN     addgroup -S -g ${GROUP_ID} redis \
 &&     adduser -S -G redis -u ${USER_ID} redis

COPY ./tools/redis.sh /tmp/redis.sh

EXPOSE 6379

CMD ["sh", "/tmp/redis.sh"]