# build-consul-template

A build of consul-template against Go 1.6 as a workaround for [Issue #442](https://github.com/hashicorp/consul-template/issues/442).

## Builds

Builds are performed in Docker containers on Circle CI, so the whole build
process is transparent, and can be replicated.

The `Dockerfile` in this repository is very straightforward, if you'd rather
run it yourself locally.

*Current builds*:

 - [consul-template_0.12.2_linux_amd64.zip](https://circle-artifacts.com/gh/duggan/build-consul-template/32/artifacts/0/tmp/circle-artifacts.87LmEFi/consul-template_0.12.2_linux_amd64.zip) ([build history](https://circleci.com/gh/duggan/build-consul-template/32#artifacts))

## DIY builds

If you'd like to build locally, ensure you have a functional Docker
install, clone this repo and run `make`. You should be left with a
`consul-template` linux x64 binary in the `target` directory. Simple!
