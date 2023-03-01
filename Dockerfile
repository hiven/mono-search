FROM valeriansaliou/sonic

mkdir -p ~/sonic-search
cd ~/sonic-search

COPY --chown=1000:0 config/sonic.cfg /usr/share/elasticsearch/config/elasticsearch.yml

#RUN chmod g+ws /usr/share/elasticsearch/config
docker run -p 1491:1491 -v /path/to/your/sonic/config.cfg:/etc/sonic.cfg -v /path/to/your/sonic/store/:/var/lib/sonic/store/ valeriansaliou/sonic:v1.4.0

USER 1000:0
