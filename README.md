# docker-diag-tools
![Image Build Status](https://img.shields.io/github/workflow/status/ccmpbll/docker-diag-tools/Docker%20Image%20CI?style=flat-square) ![Docker Image Size](https://img.shields.io/docker/image-size/ccmpbll/docker-diag-tools/latest?style=flat-square) ![Docker Pulls](https://img.shields.io/docker/pulls/ccmpbll/docker-diag-tools.svg?style=flat-square) ![License](https://img.shields.io/badge/License-GPLv3-blue.svg?style=flat-square)

A very simple Debian-based container packed with useful network troubleshooting tools.

The following packages are included: bash, curl, iputils-ping, iperf, iproute2, procps, python3, pythin3-pip, net-tools, vnstat, mtr, tcptraceroute, openssh-client, openssl, tcpdump, dnsutils, wget gnupg, mosquitto-clients, and speedtest-cli. Also included is cloudflarepycli, an excellent utility for running Cloudflare speedtests. 

```
docker run -d --name docker-diag-tools --net bridge ccmpbll/docker-diag-tools
```
