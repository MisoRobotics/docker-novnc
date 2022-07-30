FROM debian:bookworm-slim

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y bash fluxbox git net-tools novnc supervisor x11vnc xterm xvfb

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1920 \
    DISPLAY_HEIGHT=1080 \
    RUN_XTERM=yes \
    RUN_FLUXBOX=yes
COPY . /app
CMD ["/app/entrypoint.sh"]
EXPOSE 8080
