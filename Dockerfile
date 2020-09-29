FROM alpine:3.12

ARG PGWEB_VERSION=0.11.6

EXPOSE 8081

RUN apk update && apk add curl
RUN curl --silent -L -o pgweb_linux_386.zip https://github.com/sosedoff/pgweb/releases/download/v${PGWEB_VERSION}/pgweb_linux_386.zip \
    && unzip pgweb_linux_386.zip \
    && rm pgweb_linux_386.zip

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN  chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
