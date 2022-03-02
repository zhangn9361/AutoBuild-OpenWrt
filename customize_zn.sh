#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.31.1/g' openwrt/package/base-files/files/bin/config_generate

#2. 修改主机名
sed -i '/uci commit system/i\uci set system.@system[0].hostname='OpenWRT'' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. 版本号里显示一个自己的名字
sed -i "s/OpenWrt /zNing build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" openwrt/package/lean/default-settings/files/zzz-default-settings
