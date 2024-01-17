FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y vim python3 git python3-pip

WORKDIR /app

RUN vim +PlugInstall +qall || true

RUN pip install tqdm
RUN pip install requests


RUN pip3 install virtualenv && \
    virtualenv venv

RUN git clone https://github.com/tentaclepurple/PY_42_AI.git data

RUN cd data/modulo00/ex09/

CMD ["python3",  "guess.py"]
