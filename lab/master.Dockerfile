FROM williamyeh/ansible:ubuntu18.04

RUN echo 'root:ansible' | chpasswd
RUN apt-get update && apt-get install -y software-properties-common vim python net-tools telnet curl
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install -y python3.7