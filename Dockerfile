ARG SUNSHINE_VERSION='latest'
ARG SUNSHINE_OS='fedora-37'

FROM lizardbyte/sunshine:${SUNSHINE_VERSION}-${SUNSHINE_OS} as CORE

USER root
# Установка необходимых библиотек и X сервера
RUN dnf update -y \
    && dnf install -y libappindicator-gtk3 gtk3 libXtst xorg-x11-server-Xvfb \
    && dnf clean all

USER lizard
# Настройка виртуального X сервера (Xvfb)
ENV DISPLAY=:99
CMD Xvfb :99 -screen 0 1024x768x16 &

ENTRYPOINT ["/usr/bin/sunshine"]