[![GitHub license](https://img.shields.io/github/license/cfultz/xmrig-docker.svg)](https://github.com/cfultz/xmrig-docker/blob/main/LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/cfultz/xmrig-docker.svg)](https://github.com/cfultz/xmrig-docker/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/cfultz/xmrig-docker.svg)](https://github.com/cfultz/xmrig-docker/network)

# xmrig on Docker

The past "official" xmrig docker containers were built around 4 years ago at the time of this development. This is simply a container that compiled the latest xmrig from [GitHub](https://github.com/xmrig/xmrig). This does **NOT** use a proxy by default, you will need to setup your own if you wish to do that.

## Quick start

If you don't set environmental variables, you will be mining for me (thanks!) as a donation. Please confirm your settings before deploying and walking away.

``docker run -itd cfultz/xmrig``

#### NOTE:
This container is **NOT** running as priviledge to keep the host OS safe(r).

## Environmental Variables

Environmental variables that can be set:

* POOL_URL - sets the URL xmrig will use to mine
* POOL_USER - sets username for pool
* POOL_PASS - sets password for user 
* ALGO - sets algorithm xmrig will use for pool
* THREADS - number of dedicated threads
* PRIORITY - priority level
* DONATE_LEVEL - donate level for the devs of xmrig. defaults to 1 

### Example

#### Docker CLI

``docker run -itd -e POOL_URL=stratum+tcp://prohashing.com:3359 -e POOL_USER=cfultz -e ALGO=randomx -e THREADS=4 -e DONATE_LEVEL=1 cfultz/xmrig``

#### Docker Compose
```
version: '3'

services:
  xmrig:
     image: cfultz/xmrig

     restart: always     

     environment:
       POOL_URL: stratum+tcp://prohashing.com:3359
       POOL_USER: cfultz
       POOL_PASS:
       ALGO: randomx
       THREADS: 2
       PRIORITY: 1
       DONATE_LEVEL: 1
```

## Credits

* This project was inspired by [metal3d](https://github.com/metal3d/docker-xmrig)'s project. 
* [xmrig](https://github.com/xmrig/xmrig)

## Donations

If you feel inspired to donate, please consider using XMR:

```49K4TrFFjLE2EU5fw2gWA8j2vhbxFAJQEEYCp63nUARuHyrvz6VbFETfuyJFJ1TsJncQr3JK8kosHbJPRSEEgArAHseBBLR```

If you prefer Bitcoin:

```bc1qv8jhkj5uadgx7a5wsygt0y9v5she2dnuqxttuy```

Or LibrePay

[<img src="https://img.shields.io/liberapay/receives/cfultz.svg?logo=liberapay">](https://liberapay.com/cfultz/)

