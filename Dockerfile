ARG SUNSHINE_VERSION='latest'
ARG SUNSHINE_OS='ubuntu-22.04'

FROM lizardbyte/sunshine:${SUNSHINE_VERSION}-${SUNSHINE_OS} as CORE

#USER root
# Обновление системы и установка необходимых пакетов
#RUN pacman -Syu --noconfirm \
#    && pacman -S --noconfirm retroarch steam \
#    && pacman -S --noconfirm kodi

# Настройка RetroArch и Kodi (если нужно)
# Например, можно скопировать предварительно настроенные конфигурационные файлы:
# COPY ./config/retroarch.cfg /etc/retroarch.cfg
# COPY ./config/kodi.conf /etc/kodi.conf

# Определение точки входа
#ENTRYPOINT [ "steam", "&", "sunshine" ]
