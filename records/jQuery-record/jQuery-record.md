

# jQuery-record



---

![Alt text](./download.png)

```
/hello world/
```

## 拜拜了,浮动布局-基于display:inline-block的列表布局
https://www.zhangxinxu.com/wordpress/2010/11/%E6%8B%9C%E6%8B%9C%E4%BA%86%E6%B5%AE%E5%8A%A8%E5%B8%83%E5%B1%80-%E5%9F%BA%E4%BA%8Edisplayinline-block%E7%9A%84%E5%88%97%E8%A1%A8%E5%B8%83%E5%B1%80/


## 如果有人让你推荐前端技术书，请让他看这个列表
https://github.com/jobbole/awesome-web-dev-books
http://web.jobbole.com/86734/

---

## 探索 CSS3 中的 box-shadow 属性
http://web.jobbole.com/87938/

---

## 垂直对齐：vertical-align属性 详解
https://www.cnblogs.com/rixinren2010/archive/2012/03/10/2389301.html

---

## flex设置成1和auto区别
https://segmentfault.com/q/1010000004080910/a-1020000004121373

---

## vue监听滚动事件 实现某元素吸顶或者固定位置显示

https://blog.csdn.net/wang1006008051/article/details/78003974
解决bug:
https://blog.csdn.net/xuaner8786/article/details/80703227


---

## CSS Sticky footer布局
https://www.jianshu.com/p/87f40a34377b
https://blog.csdn.net/dongguan_123/article/details/70882455

---

## stylus-px2rem
https://github.com/jaywcjlove/stylus-px2rem/tree/master/lib/stylus-px2rem
https://www.cnblogs.com/mhxy13867806343/p/7008179.html

---

## inline-block 配合 font-size 0 神迹!

---

## JS类数组转化为数组的三种方法
https://blog.csdn.net/LLLyyx/article/details/78141900

---

## node服务端框架
egg
https://segmentfault.com/q/1010000009613526?_ea=2004628

360的node框架
 https://thinkjs.org/doc/index.html

meteorjs 
https://www.yiibai.com/meteor/meteor_environment_setup.html

## Pull to Refresh.js
https://www.boxfactura.com/pulltorefresh.js/

---

## 文本溢出解决方案---jquery-dotdotdot插件的使用方法
https://blog.csdn.net/qq_30668579/article/details/51177126
https://blog.csdn.net/moumaobuchiyu/article/details/56004377

---

## js的打印(输出)方式
**console.log(),console.dir(),console.table()**
https://blog.csdn.net/sunlizhen/article/details/73195471
console.log（）在控制台中打印，打印任意字符或者js的变量信息；console.log()可以接受任何字符串、变量、数字、对象；console.table()所打印的调试信息，可以在控制台中看到，不会在页面中显示出来；console.table()不会打断页面的操作；

console.dir（）在控制台中打印；console.dir()可以打印一个对象的所有属性和方法，为详细打印；

console.table（）在控制台打印，以表格的形式呈现打印的内容；展现的更完美；


## trigger使用

```javascript
//trigger() 主要用来触发自定义事件

$( "#foo" ).on( "custom", function( event, param1, param2 ) {
  alert( param1 + "\n" + param2 );
});
$( "#foo").trigger( "custom", [ "Custom", "Event" ] );
//@Dont 贴出了 jquery 源码, 其实 .click() 也是直接调用 .trigger() 方法，所以性能上应该是一样的。
```

