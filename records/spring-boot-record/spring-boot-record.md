@(工作笔记)

# spring-boot-record

![Alt text](./1595688245601.png)


[TOC]

---

Loading class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'. The driver is automatically registered via the SPI and manual loading of the driver class is generally unnecessary.



加载类“ com.mysql.jdbc.Driver”。 不推荐使用。 新的驱动程序类为“ com.mysql.cj.jdbc.Driver”。 该驱动程序通过SPI自动注册，通常不需要手动加载该驱动程序类。





---



## Communications link failure

com.mysql.cj.jdbc.Driver



mysql driver class 换成 com.mysql.cj.jdbc.Driver 解决了 什么鬼...



---



## [springboot命令行启动](https://www.cnblogs.com/ziyue7575/p/dfa7791e5c96badbb2b94a3e89a07143.html)

方法1:直接启动springboot项目

mvn compile  # 编译源码
mvn spring-boot:run # 启动项目

>若是没有加环境变量就要是  E:\software\apache-maven-3.3.9\bin\mvn spring-boot:run





---



## 解决warning

--add-opens java.base/java.util=ALL-UNNAMED --add-opens java.base/java.lang.reflect=ALL-UNNAMED --add-opens java.base/java.text=ALL-UNNAMED --add-opens java.desktop/java.awt.font=ALL-UNNAMED





## mybatis报错：Expected one result (or null) to be returned by selectOne(), but found: 20

<https://blog.csdn.net/u010453363/article/details/46621319>