ARG SUNSHINE_VERSION='v0.21.0'
ARG SUNSHINE_OS=archlinux
ARG TARGETPLATFORM=linux/amd64

FROM --platform=$TARGETPLATFORM lizardbyte/sunshine:${SUNSHINE_VERSION}-${SUNSHINE_OS} as CORE

# Обновление системы и установка необходимых пакетов
#RUN pacman -Syu --noconfirm \
#    && pacman -S --noconfirm retroarch steam \
#    && pacman -S --noconfirm kodi

# Настройка RetroArch и Kodi (если нужно)
# Например, можно скопировать предварительно настроенные конфигурационные файлы:
# COPY ./config/retroarch.cfg /etc/retroarch.cfg
# COPY ./config/kodi.conf /etc/kodi.conf

# Определение точки входа
ENTRYPOINT [ "sunshine" ]
