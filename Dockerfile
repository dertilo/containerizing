FROM ufoym/deepo:pytorch-py36-cu100

RUN apt-get update && \
    apt-get install -y openssh-server && \
    apt-get install -y zip && \
    apt-get install -y jq && \
    apt-get install -y less && \
    apt-get -y install rsync

RUN pip install -U --no-cache-dir \
            scikit-learn \
            spacy \
            pytorch-transformers \
            tensorboardX \
            tensorflow \
            flair \
            gunicorn \
            falcon \
            flask \
            bs4 \
            sklearn-crfsuite \
            git+git://github.com/hyperopt/hyperopt.git \
            ray \
            psutil \
            pytorch-ignite \
            allennlp

RUN python -m spacy download en_core_web_sm


RUN git clone https://github.com/facebookresearch/ParlAI.git && \
    cd ./ParlAI && python setup.py develop

RUN apt-get update && apt-get install -y libpq-dev iproute2
RUN pip install -U --no-cache-dir psycopg2 sqlalchemy

RUN apt-get -y install curl
RUN curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.8.1/ripgrep_0.8.1_amd64.deb
RUN dpkg -i ripgrep_0.8.1_amd64.deb


WORKDIR /docker-share
ENV PYTHONPATH /docker-share
