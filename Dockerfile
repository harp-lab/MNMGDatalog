FROM nvcr.io/nvidia/nvhpc:24.1-devel-cuda_multi-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Chicago
RUN apt-get update && apt-get install -y build-essential git wget curl vim software-properties-common lsb-release mpich

RUN apt-get install -y ca-certificates gpg wget 
RUN test -f /usr/share/doc/kitware-archive-keyring/copyright || wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null
RUN echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ jammy main' | tee /etc/apt/sources.list.d/kitware.list >/dev/null
RUN apt-get update && apt-get install -y kitware-archive-keyring
RUN apt-get update && apt-get install -y valgrind

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
ARG USER=mnmgjoin
ARG PASS="mnmgjoin"
RUN useradd -m -s /bin/bash $USER && echo "$USER:$PASS" | chpasswd
USER mnmgjoin

COPY --chown=mnmgjoin:mnmgjoin . /opt/mnmgjoin
WORKDIR /opt/mnmgjoin

RUN chmod -R 757 /opt/mnmgjoin

