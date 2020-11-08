@(工作笔记)

# brew-record

[TOC]

![Alt text](./1592553579201.png)


---


## brew search 描述中搜索关键字

```bash
brew search --desc xargs

## will give the result
## findutils: Collection of GNU find, xargs, and locate
```

---

## Homebrew 更换阿里云镜像源
https://www.phpdever.com/2019/08/02/homebrew-replace-aliyun/

你可能有过这样糟糕的经历，当你满心欢喜的敲下 “brew install 应用名称”，静静的等待安装结果的时候，Homebrew在 Updating Homebrew卡死了。

Homebrew是一款Mac OS平台下的软件包管理工具，拥有安装、卸载、更新、查看、搜索等很多实用的功能。简单的一条指令，就可以实现包管理，而不用你关心各种依赖和文件路径的情况，十分方便快捷。

使用 阿里云 的 Homebrew 镜像源进行加速
如果你没有更换过镜像源，执行 brew 命令安装应用的时候，跟以下 3 个仓库地址有关：

- brew.git
- homebrew-core.git
- homebrew-bottles
通过以下操作将这 3 个仓库地址全部替换为 阿里云 提供的地址

### 更换 brew.git


```bash
cd "$(brew --repo)"

git remote set-url origin https://mirrors.aliyun.com/homebrew/brew.git
```

### 更换 homebrew-core.git

```bash
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"

git remote set-url origin https://mirrors.aliyun.com/homebrew/homebrew-core.git
```

执行上述命令之后，请执行 brew update 命令

```bash
brew update
```


此时可以执行 brew config 命令，查看配置信息

```plain
HOMEBREW_VERSION: 2.1.5
ORIGIN: https://mirrors.aliyun.com/homebrew/brew.git
HEAD: db58b9f41b70a331dbe9b8371527a23e8ddcc718
Last commit: 2 days ago
Core tap ORIGIN: https://mirrors.aliyun.com/homebrew/homebrew-core.git
Core tap HEAD: 5e2a0aaa5fb49aeb4a820ab085f0e53f4de14371
Core tap last commit: 23 hours ago
HOMEBREW_PREFIX: /usr/local
CPU: dodeca-core 64-bit kabylake
Homebrew Ruby: 2.3.7 => /System/Library/Frameworks/Ruby.framework/Versions/2.3/usr/bin/ruby
Clang: 11.0 build 1100
Git: 2.21.0 => /usr/local/bin/git
Curl: 7.54.0 => /usr/bin/curl
Java: 1.8.0_211
macOS: 10.14.5-x86_64
CLT: 11.0.0.0.1.1559496560
Xcode: N/A
CLT headers: 11.0.0.0.1.1559496560
```

### 更换 homebrew-bottles
这与你当前 macOS 系统使用的 shell 版本有关系，执行以下命令查看 Shell版本：

```bash
echo $SHELL
```

根据版本不同，会输出2种结果，/bin/zsh 或 /bin/bash，根据类型进行操作即可

/bin/zsh 结果

```bash
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles' >> ~/.zshrc

source ~/.zshrc

```

/bin/bash 结果

```bash
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles' >> ~/.bash_profile

source ~/.bash_profile
```

到这里，更换 Homebrew 默认源的所有操作啦，尽情地去 brew install 吧！是不是很简单呢？