FROM alpine:20220715 as hugo
ARG hugo_version=0.101.0_Linux-64bit
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.101.0/hugo_$hugo_version.tar.gz \
    && tar -xvzf ./hugo_$hugo_version.tar.gz -C /bin
WORKDIR /src