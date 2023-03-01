FROM valeriansaliou/sonic:v1.4.0
COPY --chown=1000:0 config/sonic.cfg /etc/sonic.cfg
RUN docker run -p 1491:1491 -v /etc/sonic.cfg -v /var/lib/sonic/store/ valeriansaliou/sonic:v1.4.0
USER 1000:0
