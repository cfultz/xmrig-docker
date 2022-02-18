# xmrig on Docker

The past "official" xmrig docker containers were built around 4 years ago at the time of this development. This is simply a container that compiled the latest xmrig from [GitHub](https://github.com/xmrig/xmrig). This does **NOT** use a proxy by default, you will need to setup your own if you wish to do that.

## Quick start

If you don't set environmental variables, you will be mining for me (thanks!) as a donation. Please confirm your settings before deploying and walking away.

``docker run -itd cfultz/xmrig``

## Environmental Variables

Environmental variables that can be set:

* POOL_URL - sets the URL xmrig will use to mine
* POOL_USER - sets username for pool
* POOL_PASS - sets password for user 
* ALGO - sets algorithm xmrig will use for pool
* THREAD - number of dedicated threads
* PRIORITY - priority level
* DONATE_LEVEL - donate level for the devs of xmrig. defaults to 1 

### Example
``docker run -itd -e POOL_URL=stratum+tcp://prohashing.com:3359 -e POOL_USER=cfultz -e ALGO=randomx -e THREADS=4 -e DONATE_LEVEL=1 cfultz/xmrig``
