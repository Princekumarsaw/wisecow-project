FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    netcat-openbsd \
    fortune-mod \
    fortunes-min \
    cowsay \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ENV PATH="/usr/games:/usr/local/games:${PATH}"

WORKDIR /app

COPY wisecow.sh /app/wisecow.sh

RUN chmod +x /app/wisecow.sh

EXPOSE 4499

CMD ["bash", "/app/wisecow.sh"]
