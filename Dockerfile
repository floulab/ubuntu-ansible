FROM ubuntu:latest
MAINTAINER Ioannis Angelakopoulos <ioagel@gmail.com>

#Upgrade system
RUN apt-get update && apt-get upgrade -y && apt-get clean
#install latest ansible
RUN apt-get install -y software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible && \
    apt-get clean

#set timezone
RUN echo Europe/Athens | tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata
