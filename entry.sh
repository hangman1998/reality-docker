#!/bin/sh
/bin/sed -i "s/\$PORT/$PORT/g" /etc/xray/config.json
/bin/sed -i "s/\$UUID/$UUID/g" /etc/xray/config.json
/bin/sed -i "s/\$PRIVATE_KEY/$PRIVATE_KEY/g" /etc/xray/config.json
/bin/sed -i "s/\$SHORT_ID/$SHORT_ID/g" /etc/xray/config.json
cat /etc/xray/config.json
echo "vless://$UUID@$SERVER_IP:$PORT?path=%2F&security=reality&encryption=none&pbk=$PUBLIC_KEY&fp=chrome&type=http&sni=yahoo.com&sid=$SHORT_ID#VLESS-REALITY"
exec "$@"