**اسکریپت آپدیت هسته پسوال در openwrt**

اجرا با دستور زیر

```
opkg update && \
opkg install bash curl unzip && \
bash <(curl -Ls https://raw.githubusercontent.com/mashkouk/update-xray-openwrt/refs/heads/main/update-xray.sh)

```

