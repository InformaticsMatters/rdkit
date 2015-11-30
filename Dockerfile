FROM debian:jessie
MAINTAINER Tim Dudgeon <tdudgeon@informaticsmatters.com>
# WARNING this takes about an hour to build

RUN apt-get update && apt-get install -y \
 flex\
 bison\
 build-essential\
 python-numpy\
 cmake\
 python-dev\
 sqlite3\
 libsqlite3-dev\
 libboost-dev\
 libboost-python-dev\
 libboost-regex-dev\
 swig2.0\
 git\
 wget\
 zip

ENV RDKIT_BRANCH=Release_2015_03_1
RUN git clone -b $RDKIT_BRANCH --single-branch https://github.com/rdkit/rdkit.git

ENV RDBASE=/rdkit
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$RDBASE/lib
ENV PYTHONPATH=$PYTHONPATH:$RDBASE

# InChi support
WORKDIR $RDBASE/External/INCHI-API/
RUN bash $RDBASE/External/INCHI-API/download-inchi.sh

RUN mkdir $RDBASE/build
WORKDIR $RDBASE/build
RUN cmake -DRDK_BUILD_INCHI_SUPPORT=ON .. 
RUN make
RUN make install

WORKDIR $RDBASE
