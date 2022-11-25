#!/bin/bash

sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.4/g' ./target/linux/x86/Makefile

sed -i '$a src-git ssr https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git diy https://github.com/firker/diy-ziyong' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default

git clone --depth 1 -b master https://github.com/vernesong/OpenClash.git package/OpenClash
git clone --depth 1 -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
git clone --depth 1 https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
git clone --depth 1 https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan