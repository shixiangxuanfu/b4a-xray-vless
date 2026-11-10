#!/bin/sh
set -e
PORT=${PORT:-8080}
echo "Starting xray on port ${PORT}..."
sed -i "s/PORT_PLACEHOLDER/${PORT}/g" /etc/xray/config.json
cat /etc/xray/config.json
exec xray run -c /etc/xray/config.json
