#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9ff75495-3e5a-49b7-9e7e-358102f1f6a5"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

