WORKDIR=/go/src/github.com/hashicorp/consul-template/bin
VERSION?=master

all: image build

image:
	docker build -e version=$(VERSION) -t duggan/build-consul-template:$(VERSION) .
build:
	docker run -v $(PWD)/target:$(WORKDIR) duggan/build-consul-template:$(VERSION)

.PHONY: image build
