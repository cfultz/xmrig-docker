FROM debian:bullseye-slim

LABEL maintainer="Caleb Fultz <caleb@fultz.dev>"

ENV LANG="C.UTF-8" 
RUN apt update; apt upgrade; apt install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev; \

   useradd -m xmrig; \
   cd /home/xmrig; \
   git clone https://github.com/xmrig/xmrig; \
   cd xmrig; \
   mkdir build; \
   cd build; \
   cmake .. -DCMAKE_BUILD_TYPE=Release; \
   make -j$(nproc); \
   cp xmrig /usr/local/bin/xmrig; \
   cd / ; \
   rm -rf /home/xmrig;
   

ENV POOL_USER="cfultz" \
    POOL_PASS="" \
    ALGO="randomx" \
    POOL_URL="stratum+tcp://prohashing.com:3359" \
    DONATE_LEVEL=1 \
    PRIORITY=1 \
    THREADS=2

ADD entrypoint.sh /entrypoint.sh
WORKDIR /tmp
CMD ["/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
