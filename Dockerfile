FROM golang:1.6

ARG REF

RUN git clone https://github.com/hashicorp/consul-template.git /go/src/github.com/hashicorp/consul-template

WORKDIR /go/src/github.com/hashicorp/consul-template

RUN git reset --hard $REF

# Fails without being piped to true
RUN make updatedeps || /bin/true

CMD make dev
