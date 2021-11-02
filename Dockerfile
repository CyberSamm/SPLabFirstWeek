FROM ubuntu:latest

RUN mkdir -p /scripts/TEST/
WORKDIR /scripts/TEST/

COPY *.sh /scripts/
COPY Test/ /scripts/TEST/

CMD ./runAllTests.sh
