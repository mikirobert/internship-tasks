FROM ubuntu:latest

RUN useradd -ms /bin/bash john

RUN apt-get update

RUN apt-get install -y curl  

COPY create_large_file.sh .

RUN ./create_large_file.sh

COPY file_manipulation.sh .

