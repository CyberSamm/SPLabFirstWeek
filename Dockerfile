FROM ubuntu:latest

RUN mkdir -p /scripts/Test/
WORKDIR /scripts/Test/

COPY *.sh /scripts/
COPY Test/ /scripts/Test/

CMD ./runAllTests.sh
