#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/SmallWhite/g' package/base-files/files/bin/config_generate
# 删除默认argon主题，并下载新argon主题
rm -rf ./package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git    package/lean/luci-theme-argon
# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings
# 修改想要的root密码
#sed -i 's/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/root:你的密码/g' package/lean/default-settings/files/zzz-default-settings
# 版本号里显示一个自己的名字（ababwnq build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
#sed -i "s/OpenWrt /ababwnq build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings
sed -i "s/OpenWrt /SmallWhite666/g" package/lean/default-settings/files/zzz-default-settings
