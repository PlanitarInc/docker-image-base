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

CMD ["/bin/bash"]
