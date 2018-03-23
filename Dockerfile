FROM alpine:latest

ENV HUGO_VERSION 0.37.1
ENV BASE_URL https://cha.dweimer.com/

WORKDIR /site
COPY ./ .

RUN apk add --no-cache curl \
    && curl -L https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz | tar -xz

CMD ./hugo server -b ${BASE_URL} --renderToDisk --bind 0.0.0.0