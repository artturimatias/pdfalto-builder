# ALTO PDF

FROM ubuntu:18.04

USER root
RUN apt-get update && apt-get install -y wget cmake clang git gcc make autoconf automake pkg-config zlib1g-dev
RUN mkdir /home/pdfalto
COPY pdfalto /home/pdfalto
COPY install_deps.sh /home/pdfalto 

WORKDIR /home/pdfalto 
#RUN git submodule update --init --recursive
RUN ./install_deps.sh 
RUN cmake . && make 

#ENTRYPOINT ["tail", "-f", "/dev/null"]




