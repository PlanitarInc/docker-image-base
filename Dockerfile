FROM ubuntu:14.04

RUN apt-get update -y
RUN apt-get install -y curl gawk && \
    apt-get install -y python python-yaml && \
    apt-get clean

CMD ["/bin/bash"]
