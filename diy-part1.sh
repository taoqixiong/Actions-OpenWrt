#!/bin/bash

#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#sed -i '$a src-git diy https://github.com/firker/diy-ziyong' feeds.conf.default
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
#sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default

#git clone --depth 1 -b master https://github.com/vernesong/OpenClash.git package/OpenClash
#git clone --depth 1 -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
#git clone --depth 1 https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
#git clone --depth 1 https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan

git clone --depth 1 https://github.com/fw876/helloworld.git package/ssr
git clone --depth 1 https://github.com/firker/diy-ziyong.git package/diy-ziyong
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone --depth 1 -b luci https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone --depth 1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-wrtbwmon package/luci-app-wrtbwmon
svn co https://github.com/kiddin9/openwrt-packages/trunk/wrtbwmon package/wrtbwmonq