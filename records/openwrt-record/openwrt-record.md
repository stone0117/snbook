@(Java_work)

# openwrt-record

![Alt text](./1584469436166.png)


[TOC]


---

## 刷BreedWeb
https://www.youtube.com/watch?v=I0O2V_1Tx5s&list=PLiACDN8rEFmQadgF7oSvgoaW9UkR0bzKJ&index=91&t=4s


## Openwrt修改默认IP (无线中继必备操作, 不然和猫冲突)


```plain
1.通过命令修改

vi etc/config/network 

:wq退出，然后重启就可以修改为想要的192.168.x.xxx

更新固件之后还要重新修改。

2.直接修改源码，一劳永逸

修改位置在下面的某一位置，版本不同，位置不同

/package/base-files/files/lib/functions/uci-defaults.sh

或者

/package/base-files/files/bin/config_generate

修改完之后保存编译，即可。
```

## 极路由4-openwrt-v2ray

https://ibcl.us/HC5962-V2Ray_20190518/

1. 进入路由器
```bash
ssh root@192.168.3.1
```
2. 更新软件

```bash
opkg update
```

3. 安装 vsftpd、iptables-mod-tproxy、kmod-ipt-tproxy、ca-certificates

```bash
opkg install vsftpd iptables-mod-tproxy kmod-ipt-tproxy ca-certificates
```


4. 使用 FileZilla 的 FTP 协议与路由器建立连接，分别在 /usr/bin/、/etc/ 下新建名为 v2ray 的文件夹，上传事先下载并已经解压（v2ray-linux-mipsle.zip）的预编译 V2Ray 二进制文件（v2ray_softfloat、v2ctl_softfloat）到 /usr/bin/v2ray/，更名为 v2ray、v2ctl。
https://cdn-static.ibcl.us/HC5962-V2Ray_20190518/v2ray-linux-mipsle-softfloat-compressed.zip

`没有FileZilla 就用 WinSCP吧`

```bash
mkdir /usr/bin/v2ray
mkdir /etc/v2ray
```

5.赋予 755 权限。
```bash
chmod +x /usr/bin/v2ray/v2ray /usr/bin/v2ray/v2ctl
```

6. screen 后台运行程序
https://cdn-static.ibcl.us/HC5962-V2Ray_20190518/screen_4.6.2-1_mipsel_24kc.ipk

上传 ipk 到路由器 /tmp 目录下，然后安装。
```bash
opkg install /tmp/screen_4.6.2-1_mipsel_24kc.ipk
```

### 配置文件
博主的 VPS 选用了 WebSocket + Nginx + TLS 的方案，所以配置文件示范如下，酌情更改。

```json
{
  "inbounds": [
    {
      "port": 1080,
      "listen": "0.0.0.0",
      "protocol": "socks",
      "sniffing": {
        "enabled": true,
        "destOverride": ["http", "tls"]
      },
      "settings": {
        "auth": "noauth",
        "udp": true
      }
    },
    {
      "port": 8080,
      "listen": "0.0.0.0",
      "protocol": "http",
      "sniffing": {
        "enabled": true,
        "destOverride": ["http", "tls"]
      },
      "settings": {
        "timeout": 300
      }
    },
    {
      "port": 12345,
      "protocol": "dokodemo-door",
      "sniffing": {
        "enabled": true,
        "destOverride": ["http", "tls"]
      },
      "settings": {
        "network": "tcp,udp",
        "timeout": 0,
        "followRedirect": true
      }
    },
    {
      "protocol": "dokodemo-door",
      "port": 5353,
      "listen": "127.0.0.1",
      "settings": {
        "address": "1.0.0.1",
        "port": 53,
        "network": "udp",
        "timeout": 0
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "vmess",
      "settings": {
        "vnext": [
          {
            "address": "example.org",
            "port": 443,
            "users": [
              {
                "id": "ad335920-7932-11e9-b475-0800200c9a66",
                "security": "aes-128-gcm",
                "alterId": 64
              }
            ]
          }
        ]
      },
      "streamSettings": {
        "network": "ws",
        "security": "tls",
        "wsSettings": {
          "path": "/internal-proxy"
        }
      }
    }
  ]
}
```

配置文件使用 UTF-8 编码、UNIX LF 换行符上传到 /etc/v2ray
编辑 /etc/hosts，填入服务器 IP 地址

```plain
12.34.56.78 example.org
```

### 加入开机启动项
编辑 /etc/rc.local，于 exit 0 前加入以下命令。

```bash
sleep 5 && screen -dmS v2ray /usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json
```

### DNS 转发设置
LuCI > Network > Interfaces > WAN > Advanced Settings > 取消勾选 Use DNS servers advertised by peer。其余设置不变，保存并应用（Save & Apply）。

LuCI > Interfaces > LAN > DHCP Server > 将 6,192.168.1.1 填入 DHCP-Options 项中 。192.168.1.1 是设备的管理地址。其余设置不变，保存并应用（Save & Apply）。此举是向每台连接到路由器的设备通告 DNS 地址为网关地址。

`6,192.168.1.1` 根据自己的网关来设置, 即如果网关是 192.168.3.1 就设置成 `6,192.168.3.1`

LuCI > Network > DHCP and DNS > General Settings > 将 127.0.0.1#5353 填入 DNS forwardings。其余设置不变，保存并应用（Save & Apply）。此举是将所有 DNS 解析请求全部转发到服务器，防止本地 ISP 投毒。


### iptables 转发设置

LuCI > Network > Firewall > Custom Rules > 复制以下内容，其中，12345 是 dokodemo-door 的端口。另外，需要修改 12.34.56.78 为服务器的真实 IP。

```plain
# Chain TCP
iptables -t nat -N V2RAY
# Reserved IP TCP
iptables -t nat -A V2RAY -d 0.0.0.0/8 -j RETURN
iptables -t nat -A V2RAY -d 10.0.0.0/8 -j RETURN
iptables -t nat -A V2RAY -d 127.0.0.0/8 -j RETURN
iptables -t nat -A V2RAY -d 169.254.0.0/16 -j RETURN
iptables -t nat -A V2RAY -d 172.16.0.0/12 -j RETURN
iptables -t nat -A V2RAY -d 192.168.0.0/16 -j RETURN
iptables -t nat -A V2RAY -d 224.0.0.0/4 -j RETURN
iptables -t nat -A V2RAY -d 240.0.0.0/4 -j RETURN
# VPS IP
iptables -t nat -A V2RAY -d 12.34.56.78 -j RETURN
# Apply Forwarding Rules TCP
iptables -t nat -A V2RAY -p tcp -j REDIRECT --to-ports 12345
iptables -t nat -A PREROUTING -p tcp -j V2RAY
iptables -t nat -A OUTPUT -p tcp -j V2RAY
# Chain UDP
iptables -t mangle -N V2RAYUDP
# Reserved IP UDP
iptables -t mangle -A V2RAYUDP -d 0.0.0.0/8 -j RETURN
iptables -t mangle -A V2RAYUDP -d 10.0.0.0/8 -j RETURN
iptables -t mangle -A V2RAYUDP -d 127.0.0.0/8 -j RETURN
iptables -t mangle -A V2RAYUDP -d 169.254.0.0/16 -j RETURN
iptables -t mangle -A V2RAYUDP -d 172.16.0.0/12 -j RETURN
iptables -t mangle -A V2RAYUDP -d 192.168.0.0/16 -j RETURN
iptables -t mangle -A V2RAYUDP -d 224.0.0.0/4 -j RETURN
iptables -t mangle -A V2RAYUDP -d 240.0.0.0/4 -j RETURN
# NTP IP
iptables -t mangle -A V2RAYUDP -d 133.243.238.163 -j RETURN
iptables -t mangle -A V2RAYUDP -d 133.243.238.243 -j RETURN
iptables -t mangle -A V2RAYUDP -d 133.243.238.244 -j RETURN
iptables -t mangle -A V2RAYUDP -d 133.243.238.244 -j RETURN
# Apply Forwarding Rules UDP
iptables -t mangle -A V2RAYUDP -p udp -j TPROXY --on-port 12345 --tproxy-mark 0x01/0x01
iptables -t mangle -A PREROUTING -p udp -j V2RAYUDP
ip rule add fwmark 1 table 100
ip route add local default dev lo table 100
```

然后，点击 Restart Firewall，应用设置
这样便转发了 TCP、UDP 流量。

由于 V2Ray 需要本地与服务器的时间误差不超过三分钟，所以必须设置 NTP 服务器直连以对时。博主使用的是日本 NICT 的 NTP 服务器。所以在 LuCI > System > System > Time Synchronization 中勾选 Enable NTP client ，并更改 NTP 服务器为以下地址：

```plain
133.243.238.163
133.243.238.243
133.243.238.244
133.243.238.164
```

保存。


### 大功告成
LuCI > System > Reboot > Perform Reboot

等待路由器重启之后，试试 Google 能不能使用了呢?


