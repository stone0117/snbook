@(工作笔记)

# ssh-record

![Alt text](./1594372651203.png)


[TOC]

---

## 一台电脑上的git同时使用两个github账户

http://www.voidcn.com/article/p-qjpxfuos-bpm.html

```plain
#one(one@gmail.com)
Host java2020.github.com
HostName github.com
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_rsa.java
User stone0117


# two(two@ gmail.com)
Host bigdata.github.com
HostName github.com
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_rsa.bigdata
User stone0117

# koa
Host koa2.github.com
HostName github.com
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_rsa.koa2
User stone0117
```



clone 比较蛋疼, 不能直接赋值然后clone, 需要加用户名



原先

```plain
git clone git@github.com:stone0117/koa2_template.git
```

现在

```
git clone git@java2020.github.com:stone0117/koa2_template.git
git clone git@bigdata.github.com:stone0117/koa2_template.git
git clone git@koa2.github.com:stone0117/koa2_template.git
```

