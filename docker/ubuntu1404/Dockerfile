FROM ubuntu:14.04

RUN echo "nameserver 114.114.114.114" > /etc/resolv.conf
RUN cat /etc/resolv.conf
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt update
RUN apt install -y gcc g++ make
