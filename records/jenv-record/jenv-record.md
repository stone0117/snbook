@(工作笔记)

# jenv-record

![Alt text](./1593487810921.png)

[TOC]

---

~/.zshrc

```bash
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
```

对于多余的版本使用jenv remove可以从jEnv中去掉不需要的Java版本：

```bash
> jenv remove 1.6
JDK 1.6 removed
```

整理后，再运行jenv versions会显示：

```bash
> jenv versions
* system (set by /Users/bxpeng/.jenv/version)
  1.7.0.71
  1.8.0.25
```

选择一个Java版本，运行jenv local，例如：

```bash
> jenv local 1.8.0.25
> java -version
java version "1.8.0_25"
Java(TM) SE Runtime Environment (build 1.8.0_25-b17)
Java HotSpot(TM) 64-Bit Server VM (build 25.25-b02, mixed mode)
```

OK，我们已经成功地指定了某文件夹中local的Java版本。我们也可以运行`jenv global`设置一个默认的Java版本，运行`jenv which java`显示可执行的Java的完整路径。
 你也可以在特定的文件夹下使用`.java-version`文件来设定Java的版本。当我需要在Project中使用Java 7时，仅仅需要把1.7.0.71作为内容保存在`.java-version`文件中，当进入该文件夹时，JEnv会自动地帮助我设定local的Java的版本。