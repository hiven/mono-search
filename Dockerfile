FROM valeriansaliou/sonic
COPY --chown=1000:0 config/sonic.cfg /etc/sonic.cfg
RUN docker run -p 1491:1491 -v ~/sonic-search/config.cfg:/etc/sonic.cfg -v /path/to/your/sonic/store/:/var/lib/sonic/store/ valeriansaliou/sonic:v1.4.0
USER 1000:0
