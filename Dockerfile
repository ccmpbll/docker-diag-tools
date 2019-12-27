FROM alpine:latest
LABEL Name=docker-diag Version=0.1
LABEL maintainer="Chris Campbell"

RUN apk --no-cache --no-progress update && apk --no-cache --no-progress upgrade \
    && apk --no-cache --no-progress add bash curl speedtest-cli iputils tcptraceroute bind-tools \
    && rm -rf /tmp/* /var/tmp/*

ENTRYPOINT ["/bin/bash", "sleep 999d"]
