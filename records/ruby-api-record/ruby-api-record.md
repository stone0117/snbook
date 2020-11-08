@(工作笔记)

# ruby-api-record

![Alt text](./1592966008730.png)

[TOC]

---

## String

### chomp

>返回一个新的字符串，其中给定的记录分隔符从str的末尾删除（如果存在）。 如果$/没有从默认的Ruby记录分隔符中更改，那么chomp也会删除回车符(**`也就是说它将删除\n、\r和\r\n`**)。

```ruby
"hello".chomp            #=> "hello"
"hello\n".chomp          #=> "hello"
"hello\r\n".chomp        #=> "hello"
"hello\n\r".chomp        #=> "hello\n"
"hello\r".chomp          #=> "hello"
"hello \n there".chomp   #=> "hello \n there"
"hello".chomp("llo")     #=> "he"
```

