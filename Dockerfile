FROM debian:latest
LABEL Name=docker-diag-tools Version=0.3
LABEL maintainer="Chris Campbell"

RUN apt update && apt full-upgrade -y

RUN apt install -y apt-utils bash curl iputils-ping iperf3 iproute2 speedtest-cli procps python3 python3-pip \
net-tools netcat-openbsd vnstat mtr traceroute tcptraceroute openssh-client openssl tcpdump dnsutils wget gnupg mosquitto-clients
    
RUN apt clean -y && apt autoremove -y

ENTRYPOINT ["/bin/sleep", "999d"]
