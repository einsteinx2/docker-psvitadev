# A Docker Image for PS Vita Development

[![](https://images.microbadger.com/badges/image/jkap/psvitadev.svg)](https://microbadger.com/images/jkap/psvitadev)
[![](https://img.shields.io/docker/pulls/jkap/psvitadev.svg?maxAge=604800)](https://hub.docker.com/r/jkap/psvitadev/)

Cross-compile your PS Vita homebrew projects inside a Docker container based on [vdpm](https://github.com/vitasdk/vdpm).

## Quick Start

Run this command in your project's root folder to build it inside a Docker container:

```bash
docker run -it --rm -v "$PWD:/src" jkap/psvitadev make
```

This will mount the current folder to `/src` in the container and then run `make` inside `/src`. You may execute other commands, of course.

Omit the command to get a login shell (`/bin/bash`) in the running container:

```bash
docker run -it --rm -v "$PWD:/src" jkap/psvitadev
```

## Continuous Integration

With the Docker image in hand, you can also build and test your PS Vita applications on CI platforms. Here's an example configuration for Travis CI:

```yaml
# .travis.yml
language: c

sudo: required

services:
  - docker

script: docker run -it --rm -v "$PWD:/src" jkap/psvitadev make test
```

## Origin

This project is forked from [Jessica Stokes](https://twitter.com/ticky)'s [docker-pspdev](https://github.com/ticky/docker-pspdev), which is forked from [Mathias Lafeldt](https://twitter.com/mlafeldt)'s [docker-ps2dev](https://github.com/mlafeldt/docker-ps2dev).
