# openwrt-luci-kcp-udp  软件包

###  OpenWRT 安装 WireGuard 配置 Udp2Raw + UdpSpeeder
- 短网址: https://git.io/wrt.wg

###  OpenWRT 安装 WireGuard 配置 Udp2Raw + KcpTun
- 参考 Udp2Raw + UdpSpeeder ，基本相同

### OpenWRT-18.06.2 X64 固件和SDK 下载地址和文件名
https://downloads.openwrt.org/releases/18.06.2/targets/x86/64/
- openwrt-18.06.2-x86-64-combined-squashfs.img.gz
- openwrt-sdk-18.06.2-x86-64_gcc-7.3.0_musl.Linux-x86_64.tar.xz

### OpenWRT-18.06.2 x86 固件和SDK 下载地址和文件名
https://downloads.openwrt.org/releases/18.06.2/targets/x86/generic/
- openwrt-18.06.2-x86-generic-combined-squashfs.img.gz
- openwrt-sdk-18.06.2-x86-generic_gcc-7.3.0_musl.Linux-x86_64.tar.xz

### 按CPU选择下载SDK后，在VPS上 解压SDK并重命名为 opensdk
	tar xvJf openwrt-sdk-18.06.2-x86-64_gcc-7.3.0_musl.Linux-x86_64.tar.xz
	mv openwrt-sdk-18.06.2-x86-64_gcc-7.3.0_musl.Linux-x86_64 opensdk

### 安装编译环境

```
apt -y install subversion build-essential libncurses5-dev zlib1g-dev gawk git ccache gettext libssl-dev xsltproc wget unzip python time
apt -y install libcloog-isl-dev
ln -s /usr/lib/x86_64-linux-gnu/libisl.so /usr/lib/libisl.so.10
```

### 下载 openwrt-luci-kcp-udp 到 opensdk/package
	cd opensdk && git clone https://github.com/hongwenjun/openwrt-luci-kcp-udp.git
	mv openwrt-luci-kcp-udp/* package

### 配置make menuconfig; 在弹出的节目进入Luci—>3. applications，勾选为M即可，保存退出。
	cd opensdk && make menuconfig

### 使用命令编译 luci-udptools  luci-kcptools(目前还没调试完成)
```
make package/luci-udptools/compile V=99
make package/luci-kcptools/compile V=99
make package/udp2raw/compile V=99
make package/udpspeeder/compile V=99

```
- 参考文件: 编译openwrt版udpspeeder和udp2raw [文章链接](https://www.atrandys.com/2018/1255.html)

### kcp-client 软件下载 client_linux 改名成 kcp-client
- https://github.com/xtaci/kcptun/releases
- OpenWRT 存放路径  /usr/bin
