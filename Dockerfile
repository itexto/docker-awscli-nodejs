FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y awscli nodejs npm && \
    npm install -g n \
    n latest