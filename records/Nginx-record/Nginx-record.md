@(工作笔记)

# Nginx-record

[TOC]

![Alt text](./1592021835477.png)

---

## CentOS 7如何更换yum镜像源为阿里云

- 切换到/etc/yum.repos.d下
- 使用命令：wget http://mirrors.aliyun.com/repo/Centos-7.repo下载阿里云的资源文件
	- 如果没有wget工具，可以使用yum -y install wget下载安装

- 使用命令：mv CentOS-Base.repo CentOS-Base.repo.bak 备份既有的配置文件
- 使用命令：mv Centos-7.repo CentOS-Base.repo 把下载的文件重命名。
![Alt text](./1592021885512.png)

- 然后依次执行下面的命令。

```bash
yum clean all

yum makecache

yum update
```

## 2019 年如何在 CentOS 7 上安装最新版 Nginx

https://segmentfault.com/a/1190000018109309


```bash

yum install epel-release -y
yum install nginx -y

# 开机启动
systemctl enable nginx

# 启动nginx
systemctl start nginx

# 查看状态
systemctl status nginx
```


启动 Nginx

sudo systemctl start nginx
停止 Nginx

sudo systemctl stop nginx
重启 Nginx

sudo systemctl restart nginx
修改 Nginx 配置后，重新加载

sudo systemctl reload nginx
设置开机启动 Nginx

sudo systemctl enable nginx
关闭开机启动 Nginx

sudo systemctl disable nginx