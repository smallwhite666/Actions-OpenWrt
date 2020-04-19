#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate
sed -i 's/Openwrt/Kyara SSR+/g' package/base-files/files/bin/config_generate
sed -i 's/Openwrt/Kyara/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
git clone https://github.com/vernesong/OpenClash package/clash
git clone https://github.com/Lienol/openwrt-package package/openwrt-package
git clone https://github.com/fw876/helloworld package/SSR_Plus+
./scripts/feeds update -a
./scripts/feeds install -a
