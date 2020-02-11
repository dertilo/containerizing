FROM pytorch-base

RUN apt-get update && \
    apt-get install -y openssh-server && \
    apt-get install -y zip && \
    apt-get install -y jq && \
    apt-get install -y less && \
    apt-get -y install rsync && \
    apt-get install -y libpq-dev iproute2

RUN curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.8.1/ripgrep_0.8.1_amd64.deb
RUN dpkg -i ripgrep_0.8.1_amd64.deb

RUN pip install -U --no-cache-dir \
            scikit-learn \
            spacy \
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
            psycopg2 \
            sqlalchemy \
            allennlp

RUN python -m spacy download en_core_web_sm

RUN pip uninstall -y bson pymongo && pip install bson && pip install pymongo

WORKDIR /docker-share
ENV PYTHONPATH /docker-share
