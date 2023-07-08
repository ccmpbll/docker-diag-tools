FROM debian:latest
LABEL Name=docker-diag-tools Version=0.2
LABEL maintainer="Chris Campbell"

RUN apt-get update && apt-get dist-upgrade -y

RUN apt-get install -y apt-utils bash curl iputils-ping iperf3 iproute2 speedtest-cli procps python3 python3-pip \
net-tools netcat-openbsd vnstat mtr traceroute tcptraceroute openssh-client openssl tcpdump dnsutils wget gnupg mosquitto-clients
    
RUN apt-get clean -y && apt-get autoremove -y
    
RUN pip install cloudflarepycli --break-system-packages

ENTRYPOINT ["/bin/sleep", "999d"]
