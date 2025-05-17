FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y curl unzip sudo

# Descargar EasyPanel desde el endpoint correcto
RUN curl -sSL https://get.easypanel.io | bash

EXPOSE 80

CMD ["/opt/easypanel/start.sh"]
