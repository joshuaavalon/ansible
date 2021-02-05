FROM debian:lts

WORKDIR /ansible

RUN echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367

RUN apt-get update && \
    apt-get install -y ansible
