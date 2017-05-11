FROM informaticsmatters/rdkit_debian_base
MAINTAINER Tim Dudgeon <tdudgeon@informaticsmatters.com>
# WARNING this takes about an hour to build

ENV RDKIT_BRANCH=Release_2017_03
RUN git clone -b $RDKIT_BRANCH --single-branch https://github.com/rdkit/rdkit.git

ENV RDBASE=/rdkit
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$RDBASE/lib:/usr/lib/x86_64-linux-gnu
ENV PYTHONPATH=$PYTHONPATH:$RDBASE

RUN mkdir $RDBASE/build
WORKDIR $RDBASE/build

RUN cmake -DRDK_BUILD_INCHI_SUPPORT=ON .. 
RUN make
RUN make install

WORKDIR $RDBASE
