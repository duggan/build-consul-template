FROM golang:1.6beta2

ENV CONSUL_VERSION 0.12.2

RUN git clone https://github.com/hashicorp/consul-template.git /go/src/github.com/hashicorp/consul-template

WORKDIR /go/src/github.com/hashicorp/consul-template

RUN git reset --hard v$CONSUL_VERSION

RUN make updatedeps || /bin/true

CMD make dev
