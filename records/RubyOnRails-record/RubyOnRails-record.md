@(工作笔记)

# RubyOnRails-record

![Alt text](./1593417984993.png)

[TOC]

---

## 1. RVM 安装

```bash
brew install gnupg 
```

https://rvm.io/

```
官方使用的是 gpg2
# gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

brew 安装完之后是 gpg , fuck
gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

```

```bash

# 不翻墙下不了 蛋疼
# \curl -sSL https://get.rvm.io | bash -s stable

# 得配置 proxychains-ng
# https://www.hi-linux.com/posts/48321.html
pc \curl -sSL https://get.rvm.io | bash -s stable

```

## rvm 安装ruby

````bash
rvm list # 查看本地安装的版本

rvm list known # 查看能下载的版本


rvm install 2.6.5 --disable-binary # do not try binary ruby, always compile

rvm install 2.6.5 --default
```

## rails 安装

```bash
gem install rails
```

## 创建项目
```bash

Rails new aaa --skip-bundle # 先不下载安装包

```

## 进入项目开始安装

```bash
cd aaa

bundle install

```

## 最最坑爹的是 有package.json文件, 也没指定要yarn啊, fuck , yarn 还和 hadoop的yarn 重名了, 导致一直报错fuck!!!!!!!

### 安装 yarn

```bash
npm i yarn -g

cd aaa

yarn install

rails webpacker:install

rails server # 终于跑起来了 fuck!!!!!!!!!!
```



---

## 低版本安装 2.2.1

<https://ruby-china.org/wiki/rvm-guide>

1. openssl 1.1的坑, 低版本要 1.0.1

<https://ruby-china.org/topics/8937>

rvm 有 gemset 麻蛋, 有了gemset , gem环境就干净了

不然全用global和系统ruby 各种混在一起 简直要欲仙欲死, 为此卸了 N多版本的ruby fuck



---



