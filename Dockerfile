FROM debian:stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
      ca-certificates \
      build-essential \
      git \
      python \
      python3 \
      python3-dev \
      python3-pip \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install setuptools wheel

ENV LANG=C.UTF-8
