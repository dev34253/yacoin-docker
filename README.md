# yacoin-docker
Dockerfiles for Yacoin Build Environment

Build the docker image:
docker build -t yacoinbuild .

If you want to use it to build yacoin inside of it and the source is on the host:
docker run -v ABSOLUTE_PATH_TO_YACOIN_SOURCE:/src/yacoin -ti yacoinbuild /bin/bash
