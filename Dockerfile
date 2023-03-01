FROM valeriansaliou/sonic

RUN mkdir -p ~/sonic-search
RUN cd ~/sonic-search

COPY --chown=1000:0 config/sonic.cfg ~/sonic-search

#RUN chmod g+ws /usr/share/elasticsearch/config
RUN docker run -p 1491:1491 -v ~/sonic-search/config.cfg:/etc/sonic.cfg -v /path/to/your/sonic/store/:/var/lib/sonic/store/ valeriansaliou/sonic:v1.4.0

USER 1000:0
