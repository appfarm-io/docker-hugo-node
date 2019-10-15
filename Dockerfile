FROM node:12-alpine

MAINTAINER Ole Johnny Borgersen

ENV VERSION 0.55.0
RUN apk add --no-cache \
	curl \
	&& mkdir -p /usr/local/src \
	&& cd /usr/local/src \
	&& curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_linux-64bit.tar.gz | tar -xz \
	&& mv hugo /usr/local/bin/hugo \
	&& curl -L https://bin.equinox.io/c/dhgbqpS8Bvy/minify-stable-linux-amd64.tgz | tar -xz \
	&& mv minify /usr/local/bin/ 

WORKDIR /src