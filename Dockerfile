FROM nvcr.io/nvidia/pytorch:22.05-py3
MAINTAINER <rliang@nvidia.com>

ARG ssh_prv_key
ARG ssh_pub_key

RUN echo "$ssh_prv_key"
RUN echo "$ssh_pub_key"
RUN mkdir /root/.ssh && \
    echo "$ssh_prv_key" > /root/.ssh/id_ed25519 && \
    echo "$ssh_pub_key" > /root/.ssh/id_ed25519.pub && \
    chmod 600 /root/.ssh/id_ed25519 && \
    chmod 600 /root/.ssh/id_ed25519.pub && \
    ssh-keyscan -t rsa github.com >> /root/.ssh/known_hosts

RUN rm /root/.ssh/id_ed25519 && \
    rm /root/.ssh/id_ed25519.pub

# update torch
RUN pip install --upgrade pip

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
        && apt-get install -y \
            wget \
            flex \
            libcairo2-dev

RUN pip install torch==1.13.1+cu117 torchvision==0.14.1+cu117 torchaudio===0.13.1+cu117  -f https://download.pytorch.org/whl/cu117/torch_stable.html

RUN wget -O boost_1_66_0.tar.gz https://boostorg.jfrog.io/artifactory/main/release/1.66.0/source/boost_1_66_0.tar.gz && \
    tar xvf boost_1_66_0.tar.gz && \
    cd boost_1_66_0 && \
    ./bootstrap.sh  &&\
    ./b2 -q install -j 16 --without-python

# install system dependency from conda
RUN conda install -y -c conda-forge bison

# install cmake
ADD https://cmake.org/files/v3.21/cmake-3.21.0-linux-x86_64.sh /cmake-3.21.0-linux-x86_64.sh
RUN mkdir /opt/cmake \
        && sh /cmake-3.21.0-linux-x86_64.sh --prefix=/opt/cmake --skip-license \
        && ln -s /opt/cmake/bin/cmake /usr/local/bin/cmake \
        && cmake --version


# install python dependency 
RUN pip install \
        pyunpack>=0.1.2 \
        patool>=1.12 \
        matplotlib>=2.2.2 \
        cairocffi>=0.9.0 \
        pkgconfig>=1.4.0 \
        setuptools>=39.1.0 \
        scipy>=1.1.0 \
        numpy>=1.15.4 \
        shapely>=1.7.0 \
        pygmo>=2.16.1 \
        pyDOE2>=1.3.0 \
        shap>=0.41.0 \
        Pyro4>=4.82 \
        ConfigSpace>=0.6.0 \
        statsmodels>=0.13.2 \
        xgboost>=1.5.1

# install dgl
RUN pip install  dgl -f https://data.dgl.ai/wheels/cu117/repo.html
RUN pip install  dglgo -f https://data.dgl.ai/wheels-test/repo.html

