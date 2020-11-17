#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate
sed -i "13i\\uci set network.wan.proto='pppoe'\nuci set network.wan.username='test'\nuci set network.wan.password='123456'\nuci set network.wan.ifname='eth0'\nuci set network.lan.ipaddr='192.168.123.1'\nuci set network.lan.proto='static'\nuci set network.lan.type='bridge'\nuci set network.lan.ifname='eth1 eth2 eth3'\nuci commit network\n" package/lean/default-settings/files/zzz-default-settings