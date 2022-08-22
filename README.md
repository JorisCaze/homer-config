<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/JorisCaze/homer">
    <img src="logo.png" alt="logo" width="90" height="90">
  </a>
  <h3 align="center">Homer personnal home dashboard</h3>
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#overview">Overview</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#references">References</a></li>
  </ol>
</details>

<!-- OVERVIEW -->
## Overview

This repository contains my configuration file to setup [Homer](https://github.com/bastienwirtz/homer) dashboard on a FreeBSD jail within [TrueNAS](https://www.truenas.com/).

A simple deploy script is provided to facilite deployment of the Homer dahsboard application with a [NGINX](https://www.nginx.com/) web server.

Icons for the UI are extracted from [walkwhub GitHub repository](https://github.com/walkxhub/dashboard-icons).

<!-- GETTING STARTED -->
## Getting started 

Download and unzip this repository:

```
wget https://github.com/JorisCaze/homer-config/archive/refs/heads/main.zip -O homer-config.zip
unzip homer-config.zip
```

Run the deploy script:

```
chmod 744 homer-config-main/deploy.sh
./homer-config-main/deploy.sh
```

<!-- LICENSE -->
## License

Distributed under the Apache 2 license. See `LICENSE` for more information.

<!-- REFERENCES -->
## References

- [Homer](https://github.com/bastienwirtz/homer)
- [Icons GitHub repo](https://github.com/walkxhub/dashboard-icons)
- [Install NGINX on FreeBSD](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-freebsd-11-2)