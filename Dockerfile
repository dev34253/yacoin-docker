FROM ubuntu:xenial

ADD build.sh /tmp/build.sh

# Get
RUN mkdir /yacoin && \
  mkdir /yacoin/bin && \
  mkdir /yacoin/build && \
  chmod +x /tmp/build.sh && \
  apt-get update && \
  apt-get -y install git build-essential wget && \
  apt-get -y install qt4-qmake libqt4-dev && \
  cd /yacoin/build && \
  wget https://www.openssl.org/source/old/1.0.1/openssl-1.0.1g.tar.gz && \
  tar xvzf openssl-1.0.1g.tar.gz && \
  cd openssl-1.0.1g && \
  ./config && \
  make && \
  cd /yacoin/build && \
  wget http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz && \
  tar xvzf db-4.8.30.NC.tar.gz && \
  cd db-4.8.30.NC/build_unix && \
  ../dist/configure --disable-replication --enable-cxx && \
  make && \
  cd /yacoin/build && \
  wget http://sourceforge.net/projects/boost/files/boost/1.58.0/boost_1_58_0.tar.gz && \
  tar xvzf boost_1_58_0.tar.gz && \ 
  cd  boost_1_58_0 && \
  ./bootstrap.sh && \
  ./b2 --with-chrono --with-filesystem --with-program_options --with-thread --with-test stage cxxflags="-std=c++0x" && \
  cd /yacoin/build && \
  wget http://miniupnp.free.fr/files/miniupnpc-1.8.tar.gz && \
  tar xzvf miniupnpc-1.8.tar.gz && \
  cd miniupnpc-1.8 && \
  make

VOLUME ["/yacoin/bin"]

CMD ["/bin/bash", "/tmp/build.sh"]
