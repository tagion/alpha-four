FROM ubuntu:20.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install libssl1.1 -y

ENV GODEBUG=cgocheck=0

COPY bin/* /bin/
RUN chmod +x /bin/*

WORKDIR /network
COPY network .