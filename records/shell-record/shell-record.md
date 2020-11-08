@(工作笔记)

# shell-record

[TOC]

---

![Alt text](./abc001.jpg)

```bash
echo 'hello world'
```



## Mac 命令行查看自己的公网IP

Mac 查看本机公网IP 命令 curl ifconfig.me  

如果想更好看一点 curl ipinfo.io/json

还可以用wget wget <http://ipecho.net/plain> -O - -q ; echo wget <http://observebox.com/ip> -O - -q ; echo

查看本机内网IP ifconfig

------

## sublime 快捷键切换编译系统

参考:<https://forum.sublimetext.com/t/change-build-system-by-keyboard-shortcut/21769> ![img](file:///Users/stone/git_repository/snbook_edit/records/shell-record/1524442232064.png?lastModify=1592565744?lastModify=1592565744)

## 只删除第一个匹配的, 只有Linux Shell能用 - -  , mac Shell 倒是能写1来替代, 不过匹配2个...坑

参考:<https://stackoverflow.com/questions/148451/how-to-use-sed-to-replace-only-the-first-occurrence-in-a-file>

```
sed '0,/RE/s//to_that/' file 
#!/usr/bin/env bash

echo 'hello world
hello world
hello world
hello world
hello world
hello world' | sed '1,/hello/s/hello/xxx/'

# =>
xxx world
xxx world
hello world
hello world
hello world
hello world
str=$PATH
str=`echo $PATH | sed 's/:\/usr\/local\/bin//g'`
str=`echo $str | sed 's/:\/Library\/Frameworks\/Python.framework\/Versions\/2.7\/bin/:\/usr\/local\/bin:\/Library\/Frameworks\/Python.framework\/Versions\/2.7\/bin/g'`
export PATH=$str
# -a  保持目录或文件的所有属性
# -r  递归持续复制，用于目录的复制
# -f  强制复制，不需要询问
cp -R -af dist/day57_es6_001 ./
length=${#var}
# 例如:
    $ var=12345678901234567890$
    echo ${#var}
    20
echo $SHELL

echo $0
If [ $UID -ne 0 ]; then
  echo Non root user. Please run as root.
else
  echo Root user
fi 

root用户的UID是0
runcom的缩写，全称是run commands
Unix类系统中，包含启动时执行的命令的文件
no1=4;
no2=5;
let result=no1+no2;
echo $result;

let no1++;
let no2--;
echo $no1;
echo $no2;

let no1+=6
let no2-=6

echo $no1;
echo $no2;
#操作符[]的使用方法和let命令类似:
result=$[ no1 + no2 ]
echo $result

#在[]中也可以使用$前缀，例如:
result=$[ $no1 + 5 ]
echo $result

#也可以使用(())，但使用(())时，变量名之前需要加上$:
result=$(( no1 + 50 ))
echo $result
result=`expr 3 + 4`
result=$(expr $no1 + 5)
echo "4 * 0.56" | bc
打印: 2.24

no=54;
result=`echo "$no * 1.5" | bc`
echo $result
81.0
echo "scale=2;3/8" | bc
打印: 0.37
#!/bin/bash
用途:数字转换
no=100
echo "obase=2;$no" | bc
打印: 1100100

no=1100100
echo "obase=10;ibase=2;$no" | bc
打印: 100

# obase=out base
# ibase=input base

#计算平方以及平方根。
echo "sqrt(100)" | bc #Square root
打印: 10

echo "10^10" | bc #Square
打印: 10000000000
/bin/bash --version    
GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin14)

brew install bash    
... install

$ /usr/local/bin/bash --version    
GNU bash, version 4.3.46(1)-release (x86_64-apple-darwin14.5.0)
man -t ls | open -a Preview -f
对find参数-prune的理解
(PS:对find参数-prune的理解
-prune就像一个判断语 句,当发现-prune前面的表达式math时,执行到-prune之后就会输出一个1结果,如果shell的话,
可以使用echo $?来看结果,如果-prune后面跟的是-o选项,用c语言的语法来讲的话就是1 || -print,所以明显可以看到
当-prune前面的 表达式成立的话,就不会执行-o后面的内容了,如果不成立,即0 || -print,那么将打印输出,
另外需要注意的是-path路径不能加入 结尾的/,
比如路径/vobs/gliethttp/signature,不能写成/vobs/gliethttp/signature/,这是 硬性规定
find /vobs/tmp/ -path /vobs/tmp/signature -a -print
如果find .那么后面-path的必须使用相对路径./gliethttp
除 find中.之外,其他所有查找,比如find tmp或者find /vobs等,-path都必须使用绝对路径
)
# 显示除hid_uart开头的所有目录或文件,以及名为 signature的目录或文件之外的所有文件
find . −namehiduart∗−o−namesignature -prune -o -print
# 显示除当前目录./signature之外的所有文件
find . -path ./signature -prune -o -print
# 只打印当前目录下的./signature目录
find . -path ./signature -prune -a -print
# 打印除.svn下的所有.c文件
find . -name .svn -prune -o -iname '*.c' -a -print
# 或者使用-path参数
find . -path ./.svn -prune -o -print
# --process-slot-var= 环境变量名称在每个正在运行的子进程中
# 将环境变量环境变量名称设置为唯一值。每个值都是一个十进制整数。一旦子进程退出，值将被重用。例如，这可以用于基本的负载分配方案。 
sed '0,/RE/s//to_that/' file 
#!/usr/bin/env bash

echo 'hello world
hello world
hello world
hello world
hello world
hello world' | sed '1,/hello/s/hello/xxx/'

# =>
xxx world
xxx world
hello world
hello world
hello world
hello world
str=$PATH
str=`echo $PATH | sed 's/:\/usr\/local\/bin//g'`
str=`echo $str | sed 's/:\/Library\/Frameworks\/Python.framework\/Versions\/2.7\/bin/:\/usr\/local\/bin:\/Library\/Frameworks\/Python.framework\/Versions\/2.7\/bin/g'`
export PATH=$str
# -a  保持目录或文件的所有属性
# -r  递归持续复制，用于目录的复制
# -f  强制复制，不需要询问
cp -R -af dist/day57_es6_001 ./
length=${#var}
# 例如:
    $ var=12345678901234567890$
    echo ${#var}
    20
echo $SHELL

echo $0
If [ $UID -ne 0 ]; then
  echo Non root user. Please run as root.
else
  echo Root user
fi 

root用户的UID是0
runcom的缩写，全称是run commands
Unix类系统中，包含启动时执行的命令的文件
no1=4;
no2=5;
let result=no1+no2;
echo $result;

let no1++;
let no2--;
echo $no1;
echo $no2;

let no1+=6
let no2-=6

echo $no1;
echo $no2;
#操作符[]的使用方法和let命令类似:
result=$[ no1 + no2 ]
echo $result

#在[]中也可以使用$前缀，例如:
result=$[ $no1 + 5 ]
echo $result

#也可以使用(())，但使用(())时，变量名之前需要加上$:
result=$(( no1 + 50 ))
echo $result
result=`expr 3 + 4`
result=$(expr $no1 + 5)
echo "4 * 0.56" | bc
打印: 2.24

no=54;
result=`echo "$no * 1.5" | bc`
echo $result
81.0
echo "scale=2;3/8" | bc
打印: 0.37
#!/bin/bash
用途:数字转换
no=100
echo "obase=2;$no" | bc
打印: 1100100

no=1100100
echo "obase=10;ibase=2;$no" | bc
打印: 100

# obase=out base
# ibase=input base

#计算平方以及平方根。
echo "sqrt(100)" | bc #Square root
打印: 10

echo "10^10" | bc #Square
打印: 10000000000
/bin/bash --version    
GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin14)

brew install bash    
... install

$ /usr/local/bin/bash --version    
GNU bash, version 4.3.46(1)-release (x86_64-apple-darwin14.5.0)
man -t ls | open -a Preview -f
对find参数-prune的理解
(PS:对find参数-prune的理解
-prune就像一个判断语 句,当发现-prune前面的表达式math时,执行到-prune之后就会输出一个1结果,如果shell的话,
可以使用echo $?来看结果,如果-prune后面跟的是-o选项,用c语言的语法来讲的话就是1 || -print,所以明显可以看到
当-prune前面的 表达式成立的话,就不会执行-o后面的内容了,如果不成立,即0 || -print,那么将打印输出,
另外需要注意的是-path路径不能加入 结尾的/,
比如路径/vobs/gliethttp/signature,不能写成/vobs/gliethttp/signature/,这是 硬性规定
find /vobs/tmp/ -path /vobs/tmp/signature -a -print
如果find .那么后面-path的必须使用相对路径./gliethttp
除 find中.之外,其他所有查找,比如find tmp或者find /vobs等,-path都必须使用绝对路径
)
# 显示除hid_uart开头的所有目录或文件,以及名为 signature的目录或文件之外的所有文件
find . −namehiduart∗−o−namesignature -prune -o -print
# 显示除当前目录./signature之外的所有文件
find . -path ./signature -prune -o -print
# 只打印当前目录下的./signature目录
find . -path ./signature -prune -a -print
# 打印除.svn下的所有.c文件
find . -name .svn -prune -o -iname '*.c' -a -print
# 或者使用-path参数
find . -path ./.svn -prune -o -print
# --process-slot-var= 环境变量名称在每个正在运行的子进程中
# 将环境变量环境变量名称设置为唯一值。每个值都是一个十进制整数。一旦子进程退出，值将被重用。例如，这可以用于基本的负载分配方案。 
sed '0,/RE/s//to_that/' file 
#!/usr/bin/env bash

echo 'hello world
hello world
hello world
hello world
hello world
hello world' | sed '1,/hello/s/hello/xxx/'

# =>
xxx world
xxx world
hello world
hello world
hello world
hello world
str=$PATH
str=`echo $PATH | sed 's/:\/usr\/local\/bin//g'`
str=`echo $str | sed 's/:\/Library\/Frameworks\/Python.framework\/Versions\/2.7\/bin/:\/usr\/local\/bin:\/Library\/Frameworks\/Python.framework\/Versions\/2.7\/bin/g'`
export PATH=$str
# -a  保持目录或文件的所有属性
# -r  递归持续复制，用于目录的复制
# -f  强制复制，不需要询问
cp -R -af dist/day57_es6_001 ./
length=${#var}
# 例如:
    $ var=12345678901234567890$
    echo ${#var}
    20
echo $SHELL

echo $0
If [ $UID -ne 0 ]; then
  echo Non root user. Please run as root.
else
  echo Root user
fi 

root用户的UID是0
runcom的缩写，全称是run commands
Unix类系统中，包含启动时执行的命令的文件
no1=4;
no2=5;
let result=no1+no2;
echo $result;

let no1++;
let no2--;
echo $no1;
echo $no2;

let no1+=6
let no2-=6

echo $no1;
echo $no2;
#操作符[]的使用方法和let命令类似:
result=$[ no1 + no2 ]
echo $result

#在[]中也可以使用$前缀，例如:
result=$[ $no1 + 5 ]
echo $result

#也可以使用(())，但使用(())时，变量名之前需要加上$:
result=$(( no1 + 50 ))
echo $result
result=`expr 3 + 4`
result=$(expr $no1 + 5)
echo "4 * 0.56" | bc
打印: 2.24

no=54;
result=`echo "$no * 1.5" | bc`
echo $result
81.0
echo "scale=2;3/8" | bc
打印: 0.37
#!/bin/bash
用途:数字转换
no=100
echo "obase=2;$no" | bc
打印: 1100100

no=1100100
echo "obase=10;ibase=2;$no" | bc
打印: 100

# obase=out base
# ibase=input base

#计算平方以及平方根。
echo "sqrt(100)" | bc #Square root
打印: 10

echo "10^10" | bc #Square
打印: 10000000000
/bin/bash --version    
GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin14)

brew install bash    
... install

$ /usr/local/bin/bash --version    
GNU bash, version 4.3.46(1)-release (x86_64-apple-darwin14.5.0)
man -t ls | open -a Preview -f
对find参数-prune的理解
(PS:对find参数-prune的理解
-prune就像一个判断语 句,当发现-prune前面的表达式math时,执行到-prune之后就会输出一个1结果,如果shell的话,
可以使用echo $?来看结果,如果-prune后面跟的是-o选项,用c语言的语法来讲的话就是1 || -print,所以明显可以看到
当-prune前面的 表达式成立的话,就不会执行-o后面的内容了,如果不成立,即0 || -print,那么将打印输出,
另外需要注意的是-path路径不能加入 结尾的/,
比如路径/vobs/gliethttp/signature,不能写成/vobs/gliethttp/signature/,这是 硬性规定
find /vobs/tmp/ -path /vobs/tmp/signature -a -print
如果find .那么后面-path的必须使用相对路径./gliethttp
除 find中.之外,其他所有查找,比如find tmp或者find /vobs等,-path都必须使用绝对路径
)
# 显示除hid_uart开头的所有目录或文件,以及名为 signature的目录或文件之外的所有文件
find . −namehiduart∗−o−namesignature -prune -o -print
# 显示除当前目录./signature之外的所有文件
find . -path ./signature -prune -o -print
# 只打印当前目录下的./signature目录
find . -path ./signature -prune -a -print
# 打印除.svn下的所有.c文件
find . -name .svn -prune -o -iname '*.c' -a -print
# 或者使用-path参数
find . -path ./.svn -prune -o -print
```

```
# --process-slot-var= 环境变量名称在每个正在运行的子进程中
# 将环境变量环境变量名称设置为唯一值。每个值都是一个十进制整数。一旦子进程退出，值将被重用。例如，这可以用于基本的负载分配方案。 
```







------

------

------





## Mac 命令行查看自己的公网IP

Mac 查看本机公网IP 命令 curl ifconfig.me  

如果想更好看一点 curl ipinfo.io/json

还可以用wget wget <http://ipecho.net/plain> -O - -q ; echo wget <http://observebox.com/ip> -O - -q ; echo

查看本机内网IP ifconfig

------

## sublime 快捷键切换编译系统

参考:<https://forum.sublimetext.com/t/change-build-system-by-keyboard-shortcut/21769> ![img](file:///Users/stone/git_repository/snbook_edit/records/shell-record/1524442232064.png?lastModify=1592565744)

## 只删除第一个匹配的, 只有Linux Shell能用 - -  , mac Shell 倒是能写1来替代, 不过匹配2个...坑

参考:<https://stackoverflow.com/questions/148451/how-to-use-sed-to-replace-only-the-first-occurrence-in-a-file>

```
sed '0,/RE/s//to_that/' file 
#!/usr/bin/env bash

echo 'hello world
hello world
hello world
hello world
hello world
hello world' | sed '1,/hello/s/hello/xxx/'

# =>
xxx world
xxx world
hello world
hello world
hello world
hello world
str=$PATH
str=`echo $PATH | sed 's/:\/usr\/local\/bin//g'`
str=`echo $str | sed 's/:\/Library\/Frameworks\/Python.framework\/Versions\/2.7\/bin/:\/usr\/local\/bin:\/Library\/Frameworks\/Python.framework\/Versions\/2.7\/bin/g'`
export PATH=$str
# -a  保持目录或文件的所有属性
# -r  递归持续复制，用于目录的复制
# -f  强制复制，不需要询问
cp -R -af dist/day57_es6_001 ./
length=${#var}
# 例如:
    $ var=12345678901234567890$
    echo ${#var}
    20
echo $SHELL

echo $0
If [ $UID -ne 0 ]; then
  echo Non root user. Please run as root.
else
  echo Root user
fi 

root用户的UID是0
runcom的缩写，全称是run commands
Unix类系统中，包含启动时执行的命令的文件
no1=4;
no2=5;
let result=no1+no2;
echo $result;

let no1++;
let no2--;
echo $no1;
echo $no2;

let no1+=6
let no2-=6

echo $no1;
echo $no2;
#操作符[]的使用方法和let命令类似:
result=$[ no1 + no2 ]
echo $result

#在[]中也可以使用$前缀，例如:
result=$[ $no1 + 5 ]
echo $result

#也可以使用(())，但使用(())时，变量名之前需要加上$:
result=$(( no1 + 50 ))
echo $result
result=`expr 3 + 4`
result=$(expr $no1 + 5)
echo "4 * 0.56" | bc
打印: 2.24

no=54;
result=`echo "$no * 1.5" | bc`
echo $result
81.0
echo "scale=2;3/8" | bc
打印: 0.37
#!/bin/bash
用途:数字转换
no=100
echo "obase=2;$no" | bc
打印: 1100100

no=1100100
echo "obase=10;ibase=2;$no" | bc
打印: 100

# obase=out base
# ibase=input base

#计算平方以及平方根。
echo "sqrt(100)" | bc #Square root
打印: 10

echo "10^10" | bc #Square
打印: 10000000000
/bin/bash --version    
GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin14)

brew install bash    
... install

$ /usr/local/bin/bash --version    
GNU bash, version 4.3.46(1)-release (x86_64-apple-darwin14.5.0)
man -t ls | open -a Preview -f
对find参数-prune的理解
(PS:对find参数-prune的理解
-prune就像一个判断语 句,当发现-prune前面的表达式math时,执行到-prune之后就会输出一个1结果,如果shell的话,
可以使用echo $?来看结果,如果-prune后面跟的是-o选项,用c语言的语法来讲的话就是1 || -print,所以明显可以看到
当-prune前面的 表达式成立的话,就不会执行-o后面的内容了,如果不成立,即0 || -print,那么将打印输出,
另外需要注意的是-path路径不能加入 结尾的/,
比如路径/vobs/gliethttp/signature,不能写成/vobs/gliethttp/signature/,这是 硬性规定
find /vobs/tmp/ -path /vobs/tmp/signature -a -print
如果find .那么后面-path的必须使用相对路径./gliethttp
除 find中.之外,其他所有查找,比如find tmp或者find /vobs等,-path都必须使用绝对路径
)
# 显示除hid_uart开头的所有目录或文件,以及名为 signature的目录或文件之外的所有文件
find . −namehiduart∗−o−namesignature -prune -o -print
# 显示除当前目录./signature之外的所有文件
find . -path ./signature -prune -o -print
# 只打印当前目录下的./signature目录
find . -path ./signature -prune -a -print
# 打印除.svn下的所有.c文件
find . -name .svn -prune -o -iname '*.c' -a -print
# 或者使用-path参数
find . -path ./.svn -prune -o -print
```

```
# --process-slot-var= 环境变量名称在每个正在运行的子进程中
# 将环境变量环境变量名称设置为唯一值。每个值都是一个十进制整数。一旦子进程退出，值将被重用。例如，这可以用于基本的负载分配方案。 
```







------

------

------





## Mac 命令行查看自己的公网IP

Mac 查看本机公网IP 命令 curl ifconfig.me  

如果想更好看一点 curl ipinfo.io/json

还可以用wget wget <http://ipecho.net/plain> -O - -q ; echo wget <http://observebox.com/ip> -O - -q ; echo

查看本机内网IP ifconfig

------

## sublime 快捷键切换编译系统

参考:<https://forum.sublimetext.com/t/change-build-system-by-keyboard-shortcut/21769> ![img](file:///Users/stone/git_repository/snbook_edit/records/shell-record/1524442232064.png?lastModify=1592565744)

## 只删除第一个匹配的, 只有Linux Shell能用 - -  , mac Shell 倒是能写1来替代, 不过匹配2个...坑

参考:<https://stackoverflow.com/questions/148451/how-to-use-sed-to-replace-only-the-first-occurrence-in-a-file>

```
sed '0,/RE/s//to_that/' file 
#!/usr/bin/env bash

echo 'hello world
hello world
hello world
hello world
hello world
hello world' | sed '1,/hello/s/hello/xxx/'

# =>
xxx world
xxx world
hello world
hello world
hello world
hello world
str=$PATH
str=`echo $PATH | sed 's/:\/usr\/local\/bin//g'`
str=`echo $str | sed 's/:\/Library\/Frameworks\/Python.framework\/Versions\/2.7\/bin/:\/usr\/local\/bin:\/Library\/Frameworks\/Python.framework\/Versions\/2.7\/bin/g'`
export PATH=$str
# -a  保持目录或文件的所有属性
# -r  递归持续复制，用于目录的复制
# -f  强制复制，不需要询问
cp -R -af dist/day57_es6_001 ./
length=${#var}
# 例如:
    $ var=12345678901234567890$
    echo ${#var}
    20
echo $SHELL

echo $0
If [ $UID -ne 0 ]; then
  echo Non root user. Please run as root.
else
  echo Root user
fi 

root用户的UID是0
runcom的缩写，全称是run commands
Unix类系统中，包含启动时执行的命令的文件
no1=4;
no2=5;
let result=no1+no2;
echo $result;

let no1++;
let no2--;
echo $no1;
echo $no2;

let no1+=6
let no2-=6

echo $no1;
echo $no2;
#操作符[]的使用方法和let命令类似:
result=$[ no1 + no2 ]
echo $result

#在[]中也可以使用$前缀，例如:
result=$[ $no1 + 5 ]
echo $result

#也可以使用(())，但使用(())时，变量名之前需要加上$:
result=$(( no1 + 50 ))
echo $result
result=`expr 3 + 4`
result=$(expr $no1 + 5)
echo "4 * 0.56" | bc
打印: 2.24

no=54;
result=`echo "$no * 1.5" | bc`
echo $result
81.0
echo "scale=2;3/8" | bc
打印: 0.37
#!/bin/bash
用途:数字转换
no=100
echo "obase=2;$no" | bc
打印: 1100100

no=1100100
echo "obase=10;ibase=2;$no" | bc
打印: 100

# obase=out base
# ibase=input base

#计算平方以及平方根。
echo "sqrt(100)" | bc #Square root
打印: 10

echo "10^10" | bc #Square
打印: 10000000000
/bin/bash --version    
GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin14)

brew install bash    
... install

$ /usr/local/bin/bash --version    
GNU bash, version 4.3.46(1)-release (x86_64-apple-darwin14.5.0)
man -t ls | open -a Preview -f
对find参数-prune的理解
(PS:对find参数-prune的理解
-prune就像一个判断语 句,当发现-prune前面的表达式math时,执行到-prune之后就会输出一个1结果,如果shell的话,
可以使用echo $?来看结果,如果-prune后面跟的是-o选项,用c语言的语法来讲的话就是1 || -print,所以明显可以看到
当-prune前面的 表达式成立的话,就不会执行-o后面的内容了,如果不成立,即0 || -print,那么将打印输出,
另外需要注意的是-path路径不能加入 结尾的/,
比如路径/vobs/gliethttp/signature,不能写成/vobs/gliethttp/signature/,这是 硬性规定
find /vobs/tmp/ -path /vobs/tmp/signature -a -print
如果find .那么后面-path的必须使用相对路径./gliethttp
除 find中.之外,其他所有查找,比如find tmp或者find /vobs等,-path都必须使用绝对路径
)
# 显示除hid_uart开头的所有目录或文件,以及名为 signature的目录或文件之外的所有文件
find . −namehiduart∗−o−namesignature -prune -o -print
# 显示除当前目录./signature之外的所有文件
find . -path ./signature -prune -o -print
# 只打印当前目录下的./signature目录
find . -path ./signature -prune -a -print
# 打印除.svn下的所有.c文件
find . -name .svn -prune -o -iname '*.c' -a -print
# 或者使用-path参数
find . -path ./.svn -prune -o -print
```

```plain
# --process-slot-var= 环境变量名称在每个正在运行的子进程中
# 将环境变量环境变量名称设置为唯一值。每个值都是一个十进制整数。一旦子进程退出，值将被重用。例如，这可以用于基本的负载分配方案。	
```






<hr>
<hr>
<hr>


## Mac 命令行查看自己的公网IP

Mac 查看本机公网IP 命令
curl ifconfig.me  

如果想更好看一点
curl ipinfo.io/json

还可以用wget
wget http://ipecho.net/plain -O - -q ; echo
wget http://observebox.com/ip -O - -q ; echo

查看本机内网IP
ifconfig

---

## sublime 快捷键切换编译系统
参考:<https://forum.sublimetext.com/t/change-build-system-by-keyboard-shortcut/21769>
![Alt text](./1524442232064.png)


## 只删除第一个匹配的, 只有Linux Shell能用 - -  , mac Shell 倒是能写1来替代, 不过匹配2个...坑
参考:<https://stackoverflow.com/questions/148451/how-to-use-sed-to-replace-only-the-first-occurrence-in-a-file>
```bash
sed '0,/RE/s//to_that/' file 
```

```bash
#!/usr/bin/env bash

echo 'hello world
hello world
hello world
hello world
hello world
hello world' | sed '1,/hello/s/hello/xxx/'

# =>
xxx world
xxx world
hello world
hello world
hello world
hello world
```


## 坑爹的系统自带python升级记录
### 修改$PATH保证/usr/local/bin 在系统python前面
#### /Library/Frameworks/Python.framework/Versions/2.7/bin
##### 还是brew 好用 赞赞赞
**.bash_profile中修改**
```bash
str=$PATH
str=`echo $PATH | sed 's/:\/usr\/local\/bin//g'`
str=`echo $str | sed 's/:\/Library\/Frameworks\/Python.framework\/Versions\/2.7\/bin/:\/usr\/local\/bin:\/Library\/Frameworks\/Python.framework\/Versions\/2.7\/bin/g'`
export PATH=$str
```

## 拷贝目录, 覆盖

```bash
# -a  保持目录或文件的所有属性
# -r  递归持续复制，用于目录的复制
# -f  强制复制，不需要询问
cp -R -af dist/day57_es6_001 ./
```

---

## Linux Shell脚本攻略(第2版)

### 获得字符串长度, 变量值的长度
```bash
length=${#var}
# 例如:
    $ var=12345678901234567890$
    echo ${#var}
    20
```

### 识别当前所使用的shell

```bash
echo $SHELL

echo $0
```

### 检查是否为超级用户

```bash
If [ $UID -ne 0 ]; then
	echo Non root user. Please run as root.
else
	echo Root user
fi 

root用户的UID是0
```

**.bashrc中的rc是什么意思？**
```plain
runcom的缩写，全称是run commands
Unix类系统中，包含启动时执行的命令的文件
```

## 数学运算

>在Bash shell环境中，可以利用let、(( ))和[]执行基本的算术操作。而在进行高级操作时， expr和bc这两个工具也会非常有用。

1. let 写法
```bash
no1=4;
no2=5;
let result=no1+no2;
echo $result;

let no1++;
let no2--;
echo $no1;
echo $no2;

let no1+=6
let no2-=6

echo $no1;
echo $no2;
```

2. [] (())写法
```bash
#操作符[]的使用方法和let命令类似:
result=$[ no1 + no2 ]
echo $result

#在[]中也可以使用$前缀，例如:
result=$[ $no1 + 5 ]
echo $result

#也可以使用(())，但使用(())时，变量名之前需要加上$:
result=$(( no1 + 50 ))
echo $result
```
3. expr同样可以用于基本算术操作:
```bash
result=`expr 3 + 4`
result=$(expr $no1 + 5)
```
**`以上这些方法只能用于整数运算，而不支持浮点数。`**

## 浮点数计算
>bc是一个用于数学运算的高级工具，这个精密计算器包含了大量的选项。我们可以 借助它执行浮点数运算并应用一些高级函数:

```
echo "4 * 0.56" | bc
打印: 2.24

no=54;
result=`echo "$no * 1.5" | bc`
echo $result
81.0
```

>其他参数可以置于要执行的具体操作之前，同时以分号作为定界符，通过stdin传 递给bc。

设定小数精度。在下面的例子中，参数scale=2将小数位个数设置为2。因此， bc将会输出包含两个小数位的数值。
```bash
echo "scale=2;3/8" | bc
打印: 0.37
```

>进制转换。用bc可以将一种进制系统转换为另一种。来看看如何将十进制转换成 二进制，然后再将二进制转换回十进制:

```
#!/bin/bash
用途:数字转换
no=100
echo "obase=2;$no" | bc
打印: 1100100

no=1100100
echo "obase=10;ibase=2;$no" | bc
打印: 100

# obase=out base
# ibase=input base

#计算平方以及平方根。
echo "sqrt(100)" | bc #Square root
打印: 10

echo "10^10" | bc #Square
打印: 10000000000
```

---

## Bash 4 associative arrays: error “declare: -A: invalid option”
https://stackoverflow.com/questions/6047648/bash-4-associative-arrays-error-declare-a-invalid-option

苹果由于许可证原因, 还是在使用 3.x的版本... 用户手动升级吧 - -

>mac 升级bash, 
>GNU bash，版本 5.0.2(1)-release (x86_64-apple-darwin17.7.0)
>Copyright (C) 2019 Free Software Foundation, Inc.
>许可证 GPLv3+: GNU GPL 许可证第三版或者更新版本 <http://gnu.org/licenses/gpl.html>

>本软件是自由软件，您可以自由地更改和重新发布。
>在法律许可的情况下特此明示，本软件不提供任何担保。
```bash
/bin/bash --version    
GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin14)

brew install bash    
... install

$ /usr/local/bin/bash --version    
GNU bash, version 4.3.46(1)-release (x86_64-apple-darwin14.5.0)
```

## Mac 安装man命令中文文档
https://www.jianshu.com/p/5e35202fc59c

```bash
man -t ls | open -a Preview -f
```

---

## 对find参数-prune的理解
https://blog.csdn.net/xiaofei0859/article/details/52511010

```plain
对find参数-prune的理解
(PS:对find参数-prune的理解
-prune就像一个判断语 句,当发现-prune前面的表达式math时,执行到-prune之后就会输出一个1结果,如果shell的话,
可以使用echo $?来看结果,如果-prune后面跟的是-o选项,用c语言的语法来讲的话就是1 || -print,所以明显可以看到
当-prune前面的 表达式成立的话,就不会执行-o后面的内容了,如果不成立,即0 || -print,那么将打印输出,
另外需要注意的是-path路径不能加入 结尾的/,
比如路径/vobs/gliethttp/signature,不能写成/vobs/gliethttp/signature/,这是 硬性规定
find /vobs/tmp/ -path /vobs/tmp/signature -a -print
如果find .那么后面-path的必须使用相对路径./gliethttp
除 find中.之外,其他所有查找,比如find tmp或者find /vobs等,-path都必须使用绝对路径
)
```

> 原理: true || xxx , 只执行到true 就返回,  || 使用 -o 参数表示
> true && xxx , 执行到 true继续往下执行  && 使用 -a 参数表示

```bash
# 显示除hid_uart开头的所有目录或文件,以及名为 signature的目录或文件之外的所有文件
find . −namehiduart∗−o−namesignature -prune -o -print
# 显示除当前目录./signature之外的所有文件
find . -path ./signature -prune -o -print
# 只打印当前目录下的./signature目录
find . -path ./signature -prune -a -print
# 打印除.svn下的所有.c文件
find . -name .svn -prune -o -iname '*.c' -a -print
# 或者使用-path参数
find . -path ./.svn -prune -o -print
```

---



## Shadowsocks 设置终端代理
**注意wget 无法使用socks5代理**

shell 代理
https://inkss.cn/2018/09/10/shadowsocks-set-up-terminal-proxy/

## 让终端走代理的几种方法
https://blog.fazero.me/2015/09/15/%E8%AE%A9%E7%BB%88%E7%AB%AF%E8%B5%B0%E4%BB%A3%E7%90%86%E7%9A%84%E5%87%A0%E7%A7%8D%E6%96%B9%E6%B3%95/