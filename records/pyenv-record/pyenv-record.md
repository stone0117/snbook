@(工作笔记)

# pyenv-record

![Alt text](./1593477836522.png)

[TOC]

---

brew install pyenv

brew install pyenv-virtualenv

```
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```



- `pyenv`: pyenv 工具自身
- `pyenv-virtualenv`: pyenv 的插件可以用来管理 vierual environments
- `pyenv-update`: 用来更新 pyenv 的插件
- `pyenv-doctor`: 验证 pyenv 和依赖是否安装的插件
- `pyenv-which-ext`: 用来寻找相同命令的插件



这里的 shell 配置文件（~/.bash_profile）需要按照不同 Linux 作修改，如果使用 Zsh 则需要相应的配置 `~/.zshrc`

在使用 pyenv 之后使用 pip 安装的第三方模块会自动安装到当前使用 python 版本下，不会和系统模块产生冲突。使用 pip 安装模块之后，如果没有生效，记得使用 `pyenv rehash` 来更新 shims 路径。





```
pyenv global 2.7.3  # 设置全局的 Python 版本，通过将版本号写入 ~/.pyenv/version 文件的方式。
pyenv local 2.7.3 # 设置 Python 本地版本，通过将版本号写入当前目录下的 .python-version 文件的方式。通过这种方式设置的 Python 版本优先级较 global 高。
```





## [pyenv doctor breaks on OpenSSL 1.1](<https://github.com/pyenv/pyenv/issues/1067>)

On MacOS Mojave (10.14) I was able to run `pyenv doctor` with these variables exported:

```
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include
```

openssl is installed with brew (notice the caveats)

```
ls -l /usr/local/opt/openssl
lrwxr-xr-x  1 kristofferb  admin  24 Dec  8 15:10 /usr/local/opt/openssl -> ../Cellar/openssl/1.0.2q

brew info openssl
openssl: stable 1.0.2q (bottled) [keg-only]
SSL/TLS cryptography library
https://openssl.org/
/usr/local/Cellar/openssl/1.0.2q (1,795 files, 12.1MB)
  Poured from bottle on 2018-12-08 at 15:10:47
From: https://github.com/Homebrew/homebrew-core/blob/master/Formula/openssl.rb
==> Caveats
A CA file has been bootstrapped using certificates from the SystemRoots
keychain. To add additional certificates (e.g. the certificates added in
the System keychain), place .pem files in
  /usr/local/etc/openssl/certs

and run
  /usr/local/opt/openssl/bin/c_rehash

openssl is keg-only, which means it was not symlinked into /usr/local,
because Apple has deprecated use of OpenSSL in favor of its own TLS and crypto libraries.

If you need to have openssl first in your PATH run:
  echo 'export PATH="/usr/local/opt/openssl/bin:$PATH"' >> ~/.zshrc

For compilers to find openssl you may need to set:
  export LDFLAGS="-L/usr/local/opt/openssl/lib"
  export CPPFLAGS="-I/usr/local/opt/openssl/include"

For pkg-config to find openssl you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
```



### Uninstalling pyenv

The simplicity of pyenv makes it easy to temporarily disable it, or uninstall from the system.

1. To **disable** pyenv managing your Python versions, simply remove the `pyenv init` line from your shell startup configuration. This will remove pyenv shims directory from PATH, and future invocations like `python` will execute the system Python version, as before pyenv.

`pyenv` will still be accessible on the command line, but your Python apps won't be affected by version switching.

1. To completely **uninstall** pyenv, perform step (1) and then remove its root directory. This will **delete all Python versions** that were installed under `$(pyenv root)/versions/` directory:

   ```
   rm -rf $(pyenv root)
   ```

   If you've installed pyenv using a package manager, as a final step perform the pyenv package removal. For instance, for Homebrew:

   ```
    brew uninstall pyenv
   ```



---

https://www.jianshu.com/p/af1f8d7b6b31


```bash
pyenv install --list # 列出可安装版本
pyenv install <version> # 安装对应版本
pyenv install -v <version> # 安装对应版本，若发生错误，可以显示详细的错误信息
pyenv versions # 显示当前使用的python版本
pyenv which python # 显示当前python安装路径
pyenv global <version> # 设置默认Python版本
pyenv local <version> # 当前路径创建一个.python-version, 以后进入这个目录自动切换为该版本
pyenv shell <version> # 当前shell的session中启用某版本，优先级高于global 及 local
```



```css
pyenv virtualenv env # 从默认版本创建虚拟环境
pyenv virtualenv 3.6.4 env-3.6.4 # 创建3.6.4版本的虚拟环境
pyenv activate env-3.6.4 # 激活 env-3.6.4 这个虚拟环境
pyenv deactivate # 停用当前的虚拟环境

# 自动激活
# 使用pyenv local 虚拟环境名
# 会把`虚拟环境名`写入当前目录的.python-version文件中
# 关闭自动激活 -> pyenv local --unset
# 启动自动激活 -> pyenv local env-3.6.4
pyenv local env-3.6.4

pyenv uninstall env-3.6.4 # 删除 env-3.6.4 这个虚拟环境
```



```bash
#查看python版本列表
pyenv install --list

#安装3.5.0版本
pyenv install -v 3.5.0

# 卸载
pyenv uninstall 3.5.0

#安装/卸载完成后必须rehash database
pyenv rehash
```





这里要提到一点是，安装过程中楼主遇到了以下错误，然后搜到解决办法如下：

```cpp
ERROR: The Python ssl extension was not compiled. Missing the OpenSSL lib?

Please consult to the Wiki page to fix the problem.
https://github.com/pyenv/pyenv/wiki/Common-build-problems


BUILD FAILED (OS X 10.13.1 using python-build 20160602)
CFLAGS="-I$(brew --prefix openssl)/include" \
LDFLAGS="-L$(brew --prefix openssl)/lib" \
pyenv install 3.4.2
```



```bash
# 设置面向 shell 的 Python 版本，通过设置当前 shell 的 PYENV_VERSION 环境变量的方式。
# 这个版本的优先级比 local 和 global 都要高。--unset 参数可以用于取消当前 shell 设定的版本。
pyenv shell 3.5.0

#取消某版本切换
pyenv shell --unset
```



```bash
pyenv uninstall python3env
```



查看当前虚拟环境列表

```csharp
pyenv virtualenvs
```





删除某虚拟环境

```undefined
pyenv uninstall 虚拟环境名
```



---



## [Python多版本管理](https://www.jianshu.com/p/37576a6de65b)



---

查看包路径

pip show pip



---



virtualenvs 怎么玩?



