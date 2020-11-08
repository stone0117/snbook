@(工作笔记)

# webpack-record

![Alt text](./1594652662780.png)

[TOC]

---

## 对babel-transform-runtime，babel-polyfill的一些理解

<https://www.jianshu.com/p/7bc7b0fadfc2>

babel-polyfill
 babel-polyfill则是通过改写全局prototype的方式实现，比较适合单独运行的项目。
 开启babel-polyfill的方式，可以直接在代码中require，或者在webpack的entry中添加，也可以在babel的env中设置useBuildins为true来开启。
 但是babel-polyfill会有近100K，
 打包后代码冗余量比较大，
 对于现代的浏览器,有些不需要polyfill，造成流量浪费



---

```
npm install --prefix client # 左边的命令 在哪个目录上执行的意思? --prefix
```

# [How to npm install to a specified directory?](https://stackoverflow.com/questions/14469515/how-to-npm-install-to-a-specified-directory)

<https://stackoverflow.com/questions/14469515/how-to-npm-install-to-a-specified-directory>