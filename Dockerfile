FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y curl unzip sudo

RUN curl -L https://easypanel.io/install.sh | bash

EXPOSE 80

CMD ["/opt/easypanel/start.sh"]
