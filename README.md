# yacoin-docker
Dockerfiles for Yacoin

Build the docker image:
sudo docker build -t yacoinbuild .

Build yacoind:
sudo docker run -v ABSOLUTEPATH:/out/ yacoinbuild