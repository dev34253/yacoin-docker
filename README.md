# yacoin-docker
Dockerfiles for Yacoin

Build the docker image:
sudo docker build -t yacoinbuild .

Build yacoind and yacoin-qt for linux from yacoin github master branch:
sudo docker run -v ABSOLUTE_PATH_FOR_BINARIES:/yacoin/bin yacoinbuild
