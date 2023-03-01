FROM valeriansaliou/sonic

COPY --chown=1000:0 config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

RUN chmod g+ws /usr/share/elasticsearch/config

USER 1000:0
