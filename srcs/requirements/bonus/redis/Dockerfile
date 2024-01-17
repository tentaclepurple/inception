FROM debian:bullseye

RUN		apt-get update
RUN		apt-get install -y redis \
		&& rm -rf /var/lib/apt/lists/*
RUN 	chmod +x /var/lib/redis
RUN 	chmod +x /tmp

ARG     USER_ID=${USER_ID}
ARG     GROUP_ID=${GROUP_ID}

# add redis user and group with current host userid and groupid
RUN addgroup --system --gid ${GROUP_ID}  && \
    adduser --system --home /var/lib/redis --shell /sbin/nologin --no-create-home --uid ${USER_ID} 

COPY ./tools/redis.sh /tmp/redis.sh

EXPOSE 6379

CMD ["sh", "/tmp/redis.sh"]