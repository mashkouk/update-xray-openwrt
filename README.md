**اسکریپت آپدیت هسته پسوال در openwrt**

اجرا با دستور زیر

```

opkg update && opkg install bash curl unzip && \
curl -Ls -o /tmp/update-xray.sh https://raw.githubusercontent.com/mashkouk/update-xray-openwrt/refs/heads/main/update-xray.sh && \
sed -i 's/\r$//' /tmp/update-xray.sh && \
bash /tmp/update-xray.sh

```

