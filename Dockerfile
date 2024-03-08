FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

# Instale as ferramentas necessárias
RUN apt-get update && \
    apt-get install -y curl

# Instale o Node.js 18.13 usando o n
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -s -- -y nodejs
RUN apt-get update && apt-get install -y nodejs

# Configure o ambiente para usar o Node.js instalado pelo n
ENV N_PREFIX=/root/n
ENV PATH=$N_PREFIX/bin:$PATH

# Instale o Python e o pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Instale o awscli com pip
RUN pip3 install awscli