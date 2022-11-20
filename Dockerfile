FROM debian:latest
LABEL Name=docker-diag-tools Version=0.2
LABEL maintainer="Chris Campbell"

RUN apt-get update && apt-get dist-upgrade -y

RUN apt-get install -y apt-utils bash curl iperf3 iproute2 speedtest-cli procps python3 python3-pip \
net-tools vnstat mtr tcptraceroute openssh-client openssl tcpdump dnsutils wget gnupg mosquitto-clients
    
RUN apt-get clean -y && apt-get autoremove -y
    
RUN pip install cloudflarepycli bs4

ENTRYPOINT ["/bin/sleep", "999d"]
