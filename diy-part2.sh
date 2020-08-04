#!/bin/bash

echo '修改默认IP为10.0.0.1'
sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate

#修改版本号
#sed -i 's/OpenWrt/xxxx $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt/g' package/lean/default-settings/files/zzz-default-settings

#echo '修改机器名称'
#sed -i 's/OpenWrt/XXXX/g' package/base-files/files/bin/config_generate

#删除原主题
#rm -rf package/lean/luci-theme-argon

#取消bootstrap为默认主题
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

echo '下载ServerChan'
git clone https://github.com/tty228/luci-app-serverchan.git package/openwrt-packages/luci-app-serverchan

echo '下载bandwidthd'
git clone https://github.com/AlexZhuo/luci-app-bandwidthd.git package/openwrt-packages/luci-app-bandwidthd

#echo '下载eqos'
#git clone https://github.com/garypang13/luci-app-eqos.git package/openwrt-packages/luci-app-eqos

#echo '下载jd签到'
#git clone https://github.com/jerrykuku/node-request.git package/openwrt-packages/node-request
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/openwrt-packages/luci-app-jd-dailybonus

#echo '下载系统高级设置'
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-advancedsetting package/openwrt-packages/luci-app-advancedsetting

echo '替换UPNP为2.0.20170421'
rm -rf feeds/packages/net/miniupnpd
svn co https://github.com/coolsnowwolf/packages/trunk/net/miniupnpd feeds/packages/net/miniupnpd

#echo '添加主题'
#rm -rf package/lean/luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/openwrt-packages/luci-theme-argon-18.06

#echo '下载koolddns'
#git clone https://github.com/bin20088/luci-app-koolddns.git package/openwrt-packages/luci-app-koolddns
#赋予koolddns权限
#chmod 0755 package/openwrt-packages/luci-app-koolddns/root/etc/init.d/koolddns
#chmod 0755 package/openwrt-packages/luci-app-koolddns/root/usr/share/koolddns/aliddns

#./scripts/feeds clean
#./scripts/feeds update -a
#./scripts/feeds install -a
