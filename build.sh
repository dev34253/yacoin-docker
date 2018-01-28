#!/bin/bash

( cd /yacoin/build && \
  git clone https://github.com/dev34253/yacoin.git && \
  cd /yacoin/build/yacoin/src && \
  ln -s ../../miniupnpc-1.8 miniupnpc && \
  ln -s makefile.ubuntu makefile && \
  cd leveldb &&
  make &&
  cd .. &&
  make && \
  mv yacoind /yacoin/bin && \
  cd /yacoin/build/yacoin && \
  qmake yacoin-qt.pro && \
  make && \
  mv yacoin-qt /yacoin/bin )
