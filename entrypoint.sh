#!/bin/sh
printf "%s" "$XRAY_CONFIG" > /tmp/config.json
sed -i "s/__PORT__/$PORT/g" /tmp/config.json
exec /usr/local/xray/xray run -config /tmp/config.json
