FROM debian:bookworm-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
&&  apt-get install -y --no-install-recommends \
libc6-dev git make gcc tar wget build-essential libreadline-dev gdb ca-certificates \
&&  rm -rf /var/lib/apt/lists/*

RUN useradd -m nitcbase
USER nitcbase

RUN cd /home/nitcbase \
&& wget https://raw.githubusercontent.com/leepCh/mynitcbase/refs/heads/main/script.sh \
&& chmod +x script.sh \
&& mkdir NITCbase

WORKDIR /home/nitcbase/NITCbase

CMD ["sleep", "infinity"]