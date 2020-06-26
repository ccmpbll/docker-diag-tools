FROM alpine:latest
LABEL Name=docker-diag Version=0.1
LABEL maintainer="Chris Campbell"

RUN apk --no-cache --no-progress update && apk --no-cache --no-progress upgrade \
    && apk --no-cache --no-progress add bash curl iperf3 iproute2 speedtest-cli procps \
    iputils vnstat mtr tcptraceroute openssh-client openssl tcpdump bind-tools wget \
    && rm -rf /tmp/* /var/tmp/*

ENTRYPOINT ["/bin/sleep", "999d"]
