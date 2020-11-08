

# Koa2-record



---

![Alt text](./1546261574184.png)

```
/hello world/
```
---

## Can I get div's background-image url?

https://stackoverflow.com/questions/8809876/can-i-get-divs-background-image-url

---

## 豆瓣 用   node 下载视频 , 如果不写 user-agent 下载不了

```javascript
const downloadVideoSync = (url, filePath) => {
  let httpStream = request({
    method : 'GET',
    // url   : 'https://baobao-3d.bj.bcebos.com/16-0-205.shuimian.mp4'
    url    : url,
    headers: {
      'content-type': 'video/mp4',
      'User-Agent'  : 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'
    }
  });
  // 由于不需要获取最终的文件，所以直接丢掉
  // let writeStream = fs.createWriteStream('/dev/null');
  // let writeStream = fs.createWriteStream('111.mp4');
  let writeStream = fs.createWriteStream(filePath);

  // 联接Readable和Writable
  httpStream.pipe(writeStream);

  // let totalLength = 0;
  // // 当获取到第一个HTTP请求的响应获取
  // httpStream.on('response', (response) => {
  //   console.log('response headers is: ', response.headers);
  // });
  // httpStream.on('data', (chunk) => {
  //   totalLength += chunk.length;
  //   console.log('recevied data size: ' + totalLength + 'KB');
  // });
  // 下载完成
  writeStream.on('close', () => {
    console.log('下载完成');
  });
};
```

---

## github 单个仓库中搜索文件 , 快捷键 t 之后输入文件名搜索
![Alt text](./1546311057577.png)


---

## node事件循环的详解
https://coding.imooc.com/lesson/178.html#mid=10936

https://nodejs.org/en/docs/guides/event-loop-timers-and-nexttick/
原文翻译
https://www.jianshu.com/p/ac64af22d775

优先级:
process.nextTick
Promise.resolve
setTimeout
readFile(IO)
setImmediate

---

## 玩转 Promise，随心所欲控制异步操作
https://juejin.im/entry/56c46015c24aa800528da4d5#docs/promise#Promise.resolve()


## jquery 3.3.4  & 3.3.5 区别
https://stackoverflow.com/questions/19986870/bower-with-bootstrap-3

## 新版express 没了 bodyParser
https://stackoverflow.com/questions/24330014/bodyparser-is-deprecated-express-4

```javascript
var express = require('express')
var bodyParser = require('body-parser')

var app = express()

   // parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))

// parse application/json
app.use(bodyParser.json())
```

## video标签 设置成静音就能自动播放 - - 什么鬼...
video下autoplay属性无效——添加muted属性
https://blog.csdn.net/taiyangmiaomiao/article/details/80266625

## 跨域请求详解
https://yq.aliyun.com/articles/69313

## formidable 如果使用了 bodyParser 模块 将失效

---

## 传输方式不同 , 获取参数的方法
	
```javascript
// signup
app.post('/user/signup/:userid', function (request, response) {
  var _userid = request.params.userid;

  // user/signup/111?userid=1112
  var _userid = request.query.userid;

  // post body 中的 userid
  var _userid = request.body.userid;

  // /user/signup/1111?userid=1112
  // {userid:1113}
  // request.param('userid') // 已经废弃的方法, 不过还能用 , 当变量名相同的时候 有优先级
  // 先获取 result风格的userid , 再获取 body里的 userid , 最后获取 query里的 userid
});
```
---

## 『JavaScript』new关键字

### new关键字做了什么
在JavaScript中，使用new关键字后，意味着做了如下四件事情：

创建一个新的对象，这个对象的类型是object；
设置这个新的对象的内部、可访问性和[[prototype]]属性为构造函数（指prototype.construtor所指向的构造函数）中设置的；
执行构造函数，当this关键字被提及的时候，使用新创建的对象的属性；
返回新创建的对象（除非构造方法中返回的是‘无原型’）。
在创建新对象成功之后，如果调用一个新对象没有的属性的时候，JavaScript会延原型链向止逐层查找对应的内容。这类似于传统的‘类继承’。

注意：在第二点中所说的有关[[prototype]]属性，只有在一个对象被创建的时候起作用，比如使用new关键字、使用Object.create、基于字面意义的（函数默认为Function.prototype，数字默认为Number.prototype等）。它只能被Object.getPrototypeOf(someObject)所读取。没有其他任何方式来设置或读取这个值。

### 样例说明
```javascript
ObjMaker = function() {this.a = 'first';};
```
ObjMaker只是一个用于作为构造器的方法，没有其他意义。
```javascript
ObjMaker.prototype.b = 'second';
```
与其他函数类似, ObjMaker拥有一个可被我们修改的prototype属性. 我们添加一个属性b给它。与所有对象一样，ObjMaker也拥有一个不可访问的[[prototype]]属性，我们无法对其进行改变。
```javascript
obj1 = new ObjMaker();
```
这里发生了三件事情：

1.  一个叫obj1的空对象被创建，首先obj1与{}一致；
2. obj1的[[prototype]]属性被设置为ObjMaker的原型属性的拷贝；
3. ObjMaker方法被执行，所以obj1.a被设置为‘first‘。

obj1.a;
返回'first'。

obj1.b;
obj1没有'b'属性，所以JavaScript在它的[[prototype]]中查找。它的[[prototype]]与ObjMaker.prototype属性一致。而ObjMaker.prototype属性有一个叫'b'的属性，其值为'second'，所以返回'second'。

### 模仿继承
你可以使用如下的方式实例化ObjMaker类的子类：

```javascript
SubObjMaker = function () {};
SubObjMaker.prototype = new ObjMaker(); 
```
由于这里使用了new关键字，所以SubObjMaker的[[prototype]]属性被设置为ObjMaker.prototype的一个拷贝。

```javascript
SubObjMaker.prototype.c = 'third';  
obj2 = new SubObjMaker();
```
obj2的[[prototype]]属性被设置为SubObjMaker的prototype属性的一个拷贝。

obj2.c;
返回'third'。来自SubObjMaker.prototype

obj2.b;
返回‘second’。来自ObjMaker.prototype

obj2.a;
返回‘first’。来自SubObjMaker.prototype，这是因为SubObjMaker是使用ObjMaker的构造方法创建的，这个构造方法赋值给a。

---

## 普通函数与 箭头函数 this 上下文判断

```javascript
var obj = {
	fn: function(){
		console.log(this) // this指向 obj, 一般对象里的函数就用 普通函数 , 如果使用箭头函数 将指向全局 this
	}
}
```

```javascript
var obj1 = {

  name: this,

  fn1: function () {
    setTimeout(() => {
      console.log('【 test00.html:39 】-:', `this = `, this);
    }, 0);
  },

  fn2: () => {
    // this.指向 window
    var obj2 = {
      name: 'obj2',
      fn3 : function () {
        // this 指向 obj2
        var obj3 = {
          name: this, // this 指向obj2
          fn4 : () => { // 所以 this 指向 obj2
            console.log('【 test00.html:55 】-:', `this = `, this);
          }
        };
        obj3.fn4();
        console.log('【 test00.html:59 】-:', `obj3.name = `, obj3.name);
      }
    };
    obj2.fn3();
  }
};

obj1.fn1();
obj1.fn2();
console.log('【 test00.html:64 】-:', `obj1.name = `, obj1.name);
```


## 渲染变量：app.locals 和 res.locals
上面的模板中我们用到了 blog、user、success、error 变量，我们将 blog 变量挂载到 app.locals 下，将 user、success、error 挂载到 res.locals 下。为什么要这么做呢？app.locals 和 res.locals 是什么？它们有什么区别？
express 中有两个对象可用于模板的渲染：app.locals 和 res.locals。我们从 express 源码一探究竟：

### express/lib/application.js

```javascript
app.render = function render(name, options, callback) {
  ...
  var opts = options;
  var renderOptions = {};
  ...
  // merge app.locals
  merge(renderOptions, this.locals);

  // merge options._locals
  if (opts._locals) {
    merge(renderOptions, opts._locals);
  }

  // merge options
  merge(renderOptions, opts);
  ...
  tryRender(view, renderOptions, done);
};

```

### express/lib/response.js

```javascript
res.render = function render(view, options, callback) {
  var app = this.req.app;
  var opts = options || {};
  ...
  // merge res.locals
  opts._locals = self.locals;
  ...
  // render
  app.render(view, opts, done);
};

```

可以看出：在调用 res.render 的时候，express 合并（merge）了 3 处的结果后传入要渲染的模板，优先级：res.render 传入的对象> res.locals 对象 > app.locals 对象，所以 app.locals 和 res.locals 几乎没有区别，都用来渲染模板，使用上的区别在于：app.locals 上通常挂载常量信息（如博客名、描述、作者信息），res.locals 上通常挂载变量信息，即每次请求可能的值都不一样（如请求者信息，res.locals.user = req.session.user）。
修改 index.js，在 routes(app); 上一行添加如下代码：

```javascript
// 设置模板全局常量
app.locals.blog = {
  title: pkg.name,
  description: pkg.description
};

// 添加模板必需的三个变量
app.use(function (req, res, next) {
  res.locals.user = req.session.user;
  res.locals.success = req.flash('success').toString();
  res.locals.error = req.flash('error').toString();
  next();
});

```

这样在调用 res.render 的时候就不用传入这四个变量了，express 为我们自动 merge 并传入了模板，所以我们可以在模板中直接使用这四个变量。

---

## node第三方模块should说明
https://my.oschina.net/u/1753171/blog/291817

## glob 使用详解
https://www.cnblogs.com/liulangmao/p/4552339.html


## parcel打包之后 Uncaught ReferenceError: regeneratorRuntime is not defined
https://blog.csdn.net/github_38313789/article/details/82951687


## mongodb 远程连接失败的解决办法
https://www.cnblogs.com/lindsay-chh/p/4734568.html

## Ubuntu 16.04安装Stacer系统优化工具
https://www.linuxidc.com/Linux/2017-07/145517.htm
