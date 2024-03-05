FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y default-libmysqlclient-dev
RUN apt-get install -y curl
RUN apt-get install -y build-essential

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs >> rustup-install.sh
RUN chmod +x rustup-install.sh
RUN ./rustup-install.sh -y