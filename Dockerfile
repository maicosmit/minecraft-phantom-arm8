FROM ubuntu:latest

ENV SERVER=

RUN apt-get update
RUN apt-get install -y wget
RUN wget https://github.com/jhead/phantom/releases/download/v0.5.4/phantom-linux-arm8
RUN chmod +x phantom-linux-arm8

CMD ./phantom-linux-arm8 $SERVER
