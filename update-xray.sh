#!/bin/sh
# Update Xray-core with custom download link (no backup)
# Estefade: ./update-xray.sh [download_link]
# Mesal:   ./update-xray.sh https://github.com/XTLS/Xray-core/releases/download/v1.8.11/Xray-linux-64.zip

LINK="$1"

# اگر لینک داده نشده، از کاربر بخواه
if [ -z "$LINK" ]; then
  echo -n "Lotfan link download Xray-core ro vared kon: "
  read LINK
fi

# بررسی دوباره لینک
if [ -z "$LINK" ]; then
  echo "❌ Link download vared nashod. Exit mikonim."
  exit 1
fi

cd /tmp || exit 1

echo "⬇️ Download az: $LINK ..."
wget -O xray-custom.zip "$LINK"

if [ $? -ne 0 ]; then
  echo "❌ Download nashod. Link ya internet ro check kon."
  exit 1
fi

echo "📦 Extract file..."
unzip -o xray-custom.zip

if [ ! -f ./xray ]; then
  echo "❌ File xray peida nashod. Shayed link eshtebahe ya baraye architecture dige bashe."
  exit 1
fi

echo "🚀 Jagozini binary jadid..."
cp ./xray /usr/bin/xray
chmod +x /usr/bin/xray

echo "🔄 Restart PassWall2..."
/etc/init.d/passwall2 restart

echo "✅ Xray jadid ba movafaghiat nasb shod!"
