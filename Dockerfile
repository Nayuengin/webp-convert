FROM ubuntu:22.04
LABEL maintainer="NayuEngin"
LABEL version="0.1"

WORKDIR /app

RUN apt-get update
RUN apt-get install webp -y

COPY script.sh /app/script.sh
RUN chmod +x /app/script.sh

ENTRYPOINT [ "/app/script.sh" ]
