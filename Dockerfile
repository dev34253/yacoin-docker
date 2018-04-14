FROM ubuntu:xenial
MAINTAINER dev34253

RUN apt-get update && \
 apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3 -y && \
 apt-get install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev -y && \
 apt-get install software-properties-common -y && \
 add-apt-repository ppa:bitcoin/bitcoin -y && \
 apt-get update && \
 apt-get install libdb4.8-dev libdb4.8++-dev -y && \
 apt-get install libminiupnpc-dev -y && \
 apt-get install libzmq3-dev -y && \
 apt-get install libqt4-dev libprotobuf-dev protobuf-compiler -y && \
 apt-get install libqrencode-dev -y && \
 apt-get install git -y && \
 apt-get install ca-certificates -y && \
 mkdir ~/repo



