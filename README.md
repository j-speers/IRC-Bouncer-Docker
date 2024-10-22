# IRC-Bouncer-Docker

This repository provides a Dockerized solution for running an IRC bouncer, which can help mitigate botnet / DDoS
attacks on your IRC server.

## Features

- Scans all incoming connections against many Open Proxy and DNSBL databases, autobans any suspicious IPs.
- Persistent storage setup for configuration and logs.
- Dockerized solution orchestrated through Docker Swarm.
- Easily scale up the number of Open Proxy or DNSBL scanners based on the size of the botnet attack you are experiencing.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/j-speers/IRC-Bouncer-Docker.git
