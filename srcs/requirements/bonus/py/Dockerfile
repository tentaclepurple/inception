FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y vim python3

WORKDIR /app

RUN vim +PlugInstall +qall || true

RUN apt-get install -y python3-pip

RUN pip3 install virtualenv && \
    virtualenv venv

CMD ["/bin/bash"]
