FROM debian:bookworm-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
&&  apt-get install -y --no-install-recommends \
libc6-dev git make gcc tar wget build-essential libreadline-dev gdb \
&&  rm -rf /var/lib/apt/lists/*

RUN useradd -m nitcbase
USER nitcbase

RUN cd /home/nitcbase \
&& wget https://raw.githubusercontent.com/leepCh/mynitcbase/main/setup.sh  \
&& chmod +x setup.sh \
&& mkdir NITCbase

WORKDIR /home/nitcbase/NITCbase

CMD ["sleep", "infinity"]






     

