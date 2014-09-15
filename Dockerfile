FROM ubuntu:14.04

RUN apt-get update -y
RUN apt-get install -y curl && apt-get clean

CMD ["/bin/bash"]
