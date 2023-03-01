FROM valeriansaliou/sonic:v1.4.0
COPY config/sonic.cfg /etc/sonic.cfg
RUN docker run valeriansaliou/sonic:v1.4.0
