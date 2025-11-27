# 请在下方输入自定义命令(一般用来安装第三方插件)(可以留空)

# 编辑默认的lan口ip地址
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 编辑默认的主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 编辑默认的luci显示的固件名称
#sed -i 's/OpenWrt/ZWRT/g' package/base-files/files/bin/config_generate
#sed -i 's/ImmortalWrt/ZWRT/g' package/base-files/files/bin/config_generate

# 添加额外的软件包，echo 方式和git clone 方式二选一即可
#echo 'src-git fullcone https://github.com/fullcone-nat-nftables/nft-fullcone.git' >>feeds.conf.default
#echo 'src-git UA3F https://github.com/SunBK201/UA3F.git' >>feeds.conf.default
#git clone https://github.com/stevenjoezhang/luci-app-adguardhome.git package/ADGH
git clone https://github.com/jerrykuku/luci-theme-argon.git
#echo 'src-git immortalwrt_packages https://github.com/immortalwrt/packages.git;openwrt-24.10' >> feeds.conf.default
#echo 'src-git immortalwrt_luci https://github.com/immortalwrt/luci.git;openwrt-24.10' >> feeds.conf.default


echo 'src-git packages https://github.com/immortalwrt/packages.git;openwrt-24.10' >> feeds.conf.default
echo 'src-git luci https://github.com/immortalwrt/luci.git;openwrt-24.10' >> feeds.conf.default
echo 'src-git routing https://github.com/immortalwrt/routing.git;openwrt-24.10' >> feeds.conf.default
echo 'src-git immortalwrt_packages https://github.com/immortalwrt/packages.git;openwrt-24.10' >> feeds.conf.default


