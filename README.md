# docker-diag-tools
![Image Build Status](https://img.shields.io/github/actions/workflow/status/ccmpbll/docker-diag-tools/docker-image.yml?branch=master) ![Docker Image Size](https://img.shields.io/docker/image-size/ccmpbll/docker-diag-tools/latest) ![Docker Pulls](https://img.shields.io/docker/pulls/ccmpbll/docker-diag-tools.svg) ![License](https://img.shields.io/badge/License-GPLv3-blue.svg)

A very simple Debian-based container packed with useful network troubleshooting tools.

The following packages are included: bash, curl, iputils-ping, iperf, iproute2, procps, python3, python3-pip, net-tools, netcat-openbsd, vnstat, mtr, tcptraceroute, openssh-client, openssl, tcpdump, dnsutils, wget, gnupg, mosquitto-clients, and speedtest-cli.

```
docker run -d --name docker-diag-tools --net bridge ccmpbll/docker-diag-tools
```
