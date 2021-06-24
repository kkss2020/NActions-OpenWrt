#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/fw876/helloworld package/ssr
# git clone https://github.com/rufengsuixing/luci-app-adguardhome                          package/adg
# git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/jd
git clone https://github.com/garypang13/luci-app-dnsfilter package/dnsfilter
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/argon-config
./scripts/feeds update -a
./scripts/feeds install -a
