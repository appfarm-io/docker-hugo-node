FROM node:10

ENV HOME /root
WORKDIR /root

ENV VERSION 0.55.0

RUN apt-get update && apt-get install -y apt-transport-https curl  && \
	mkdir -p /usr/local/src \
	&& cd /usr/local/src \
	&& curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_linux-64bit.tar.gz | tar -xz \
	&& mv hugo /usr/local/bin/hugo \
	&& curl -L https://bin.equinox.io/c/dhgbqpS8Bvy/minify-stable-linux-amd64.tgz | tar -xz \
	&& mv minify /usr/local/bin/