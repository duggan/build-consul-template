# build-consul-template

A build of consul-template against Go 1.6beta2 as a workaround for hashicorp/consul-template#442.

## Builds

Builds are performed in Docker containers on Circle CI, so the whole build
process is transparent, and can be replicated.

The `Dockerfile` in this repository is very straightforward, if you'd rather
run it yourself locally.

*Current builds*:

 - [consul-template_0.12.2_linux_amd64.zip](https://circle-artifacts.com/gh/duggan/build-consul-template/12/artifacts/0/tmp/circle-artifacts.41kTfFz/consul-template_0.12.2_linux_amd64.zip) ([build history](https://circleci.com/gh/duggan/build-consul-template/12#artifacts))