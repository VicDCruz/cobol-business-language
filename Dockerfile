FROM ubuntu:18.04

COPY . /cobol
WORKDIR /cobol

RUN apt update
RUN apt install -y open-cobol
RUN cobc --version
