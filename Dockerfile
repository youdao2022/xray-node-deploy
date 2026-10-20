FROM alpine:3.20
RUN apk add --no-cache curl unzip ca-certificates \
 && curl -L -o /tmp/xray.zip https://github.com/XTLS/Xray-core/releases/download/v1.8.24/Xray-linux-64.zip \
 && unzip -o /tmp/xray.zip -d /usr/local/xray \
 && chmod +x /usr/local/xray/xray \
 && rm /tmp/xray.zip
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
