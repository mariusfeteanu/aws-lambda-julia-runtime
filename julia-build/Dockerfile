FROM ubuntu:bionic-20190912.1

RUN apt-get update -y

RUN useradd -ms /bin/bash builder
WORKDIR /home/builder

# Get the code first since it's the slowest part
RUN apt-get install -y git
USER builder
RUN git clone git://github.com/JuliaLang/julia.git
WORKDIR /home/builder/julia
RUN git checkout v1.2.0

# Install any needed build tools
# N.B.: This install python2 currently, which seems to be what the Julia build docs suggest
USER root
RUN apt-get install -y \
      build-essential \
      libatomic1 \
      python \
      python-pip \
      curl \
      gfortran \
      m4 \
      cmake \
      pkg-config

# Make sure python refers to pythob3
# RUN echo "#!/usr/bin/env bash\npython3 \$@" > /usr/local/bin/python
# RUN chmod +x /usr/local/bin/python

USER builder
