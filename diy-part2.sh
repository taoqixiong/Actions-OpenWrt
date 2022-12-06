#!/bin/bash

#sed -i '/DTS_DIR:=$(LINUX_DIR)/a\BUILD_DATE_PREFIX := $(shell date +'%F')' ./include/image.mk
#sed -i 's/IMG_PREFIX:=/IMG_PREFIX:=$(BUILD_DATE_PREFIX)-/g' ./include/image.mk
#sed -i "s/DISTRIB_DESCRIPTION='OpenWrt '/DISTRIB_DESCRIPTION='OpenWrt VIP99 '/g" ./package/lean/default-settings/files/zzz-default-settings
#sed -i "s/hostname='OpenWrt'/hostname='OpenWrt-SE'/g" ./package/base-files/files/bin/config_generate

#rm -rf ./package/lean/luci-theme-argon
#rm -rf ./feeds/passwall/xray-plugin
#rm -rf ./feeds/packages/net/https-dns-proxy

#svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy feeds/packages/net/https-dns-proxy

curl -fsSL https://raw.githubusercontent.com/coolsnowwolf/luci/master/applications/luci-app-adbyby-plus/root/usr/share/adbyby/ad-update > ./feeds/luci/applications/luci-app-adbyby-plus/root/usr/share/adbyby/ad-update
curl -fsSL  https://raw.githubusercontent.com/firkerword/KPR/main/cus_config.yaml > ./package/openwrt-mos/luci-app-mosdns/root/etc/mosdns/cus_config.yaml

sed -i 's/bootstrap/argon/g' ./feeds/luci/modules/luci-base/root/etc/config/luci
rm -rf ./package/diy-ziyong/theme
rm -rf ./package/diy-ziyong/luci-app-wrtbwmon
rm -rf ./package/diy-ziyong/wrtbwmon
rm -rf ./feeds/packages/net/adguardhome
rm -rf ./feeds/packages/net/smartdns
rm -rf ./feeds/packages/net/mosdns