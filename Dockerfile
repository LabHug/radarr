FROM ghcr.io/labhug/baseimage-alpine:latest

ARG RADARR_BRANCH=master
ARG RADARR_VER=5.0.3.8127

LABEL org.opencontainers.image.authors="Daniel Henry <iamdanhenry@gmail.com>" \
      org.opencontainers.image.title="Radarr" \
      org.opencontainers.image.url="https://radarr.video" \
      org.opencontainers.image.description="A movie management and downloader tool" \
      org.opencontainers.image.version=${RADARR_VER} \
      io.spritsail.version.radarr=${RADARR_VER}


RUN apk add --no-cache \
       icu-libs \
       libintl \
       libmediainfo \
       sqlite-libs \
       curl \
       xmlstarlet &&\
       mkdir -p /app/radarr/bin && \
       curl -o /tmp/radarr.tar.gz -L "https://radarr.servarr.com/v1/update/${RADARR_BRANCH}/updatefile?version=${RADARR_VER}&os=linuxmusl&runtime=netcore&arch=x64" &&\
       tar xvf /tmp/radarr.tar.gz -C \
       /app --strip-components=1  && \
       rm -rf \
       /app/radarr/bin/Radarr.Update \
       /tmp/*
       


EXPOSE 7878

RUN chown -R labhug:labhug /config /app

CMD ["su-exec", "labhug:labhug", "/app/Radarr", "--no-browser", "--data=/config"]