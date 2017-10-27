FROM debian:stretch

RUN apt-get update -qqy && apt-get install -qqy --no-install-recommends \
    ca-certificates \
    build-essential \
    git \
    python \
    python3 \
    python3-dev \
    python3-pip \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
  && pip3 install setuptools wheel \
  && rm -rf /root/.cache

ENV LANG=C.UTF-8
