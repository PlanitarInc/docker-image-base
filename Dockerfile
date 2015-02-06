FROM ubuntu:14.04

RUN apt-get update -y
RUN apt-get install -y curl gawk wget jq && \
    apt-get install -y python python-yaml python-pip && \
    apt-get clean && \
    pip install awscli

CMD ["/bin/bash"]
