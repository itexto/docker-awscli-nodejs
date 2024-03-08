FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update 
RUN apt-get install -y curl
RUN curl -L https://git.io/n-install | bash -s -- -y 18.13.0
# RUN apt-get install -y awscli nodejs npm && \
#     npm install -g n \
#     n 18.13.0