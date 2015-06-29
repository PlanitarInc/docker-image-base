FROM ubuntu:14.04

RUN locale-gen en_US.UTF-8 && update-locale en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN apt-get update -y && \
    apt-get install -y curl gawk wget jq && \
    apt-get install -y python python-yaml python-pip && \
    apt-get clean && \
    pip install awscli
#      easy_install --upgrade pip && \

RUN gpg --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && \
    curl -o /usr/local/bin/gosu -sSL "https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture)" && \
    curl -o /usr/local/bin/gosu.asc -sSL "https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture).asc" && \
    gpg --verify /usr/local/bin/gosu.asc && \
    rm /usr/local/bin/gosu.asc && \
    chmod +x /usr/local/bin/gosu

CMD ["/bin/bash"]
