@(工作笔记)

# javascript-record

[TOC]

---

## 强制使用new 来实例化
```javascript
function Person () {

  console.log(new.target);

  if (new.target === undefined) {
    throw new Error('试试 new 来创建');
  }
}

let person = new Person();
console.log(person);

Person();

```

---

## 'string'.padStart(2,'0') && 'string'.padEnd(2,'0')

ES6 字符串格式化

能代替 const { sprintf, vsprintf } = require('sprintf-js')





---



## [我如何使用下划线获取基于对象属性的唯一数组](https://stackoverflow.com/questions/20739575/how-can-i-get-a-unique-array-based-on-object-property-using-underscore)

使用[uniq](http://underscorejs.org/#uniq)函数

```js
var destArray = _.uniq(sourceArray, function(x){
    return x.name;
});
```

```js
function uniq(arr) {
  var tmp = new Set(arr.map(item => JSON.stringify(item)))
  return Array.from(tmp).map(item => JSON.parse(item))
}

function uniqWithObject(arr, property) {
  let obj = {}
  arr.forEach(item => {obj[item[property]] = item})
  return Object.values(obj)
}
```



---

## item.detail = undefined 比 delete item.detail 好使, mongoose 获取的对象 delete删不掉属性...



---



## **原生js动态添加元素标签及设置属性**

<https://www.imooc.com/article/12888>



## [原生 js 如何追加 html](https://segmentfault.com/q/1010000007420031)



<code class="javascript" style="word-break: break-word; white-space: initial;"><span class="hljs-built_in">document</span>.getElementById(<span class="hljs-string">'a'</span>).innerHTML +=<span class="hljs-string">'&lt;ul&gt;&lt;li&gt;item1&lt;/li&gt;&lt;ul&gt;'</span>;</code>



<https://segmentfault.com/q/1010000007420031>



