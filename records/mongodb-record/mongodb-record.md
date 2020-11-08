
# mongodb-record

---

![Alt text](1524198706179.png)


```vbscript-html
<p>hello world</p>
```

## MongoDB编写并执行js脚本
https://www.jianshu.com/p/de30dc39c169
https://docs.mongodb.com/manual/reference/method/
https://docs.mongodb.com/manual/tutorial/write-scripts-for-the-mongo-shell/index.html

---

## mongodb
https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/

## Is it possible to rename _id field after mongo's group aggregation?
https://stackoverflow.com/questions/43537943/is-it-possible-to-rename-id-field-after-mongos-group-aggregation


## mock过滤属性

```javascript
let content = `// mongo --nodb mongodb_load_data/insert.js // 非交互模式下
// load("mongodb_load_data/insert.js") // 交互模式下

conn = new Mongo("localhost:27017");

db = conn.getDB("ershouche");

db.cars.drop();`;

for (let i = 0; i < arr.length; ++i) {

  let obj = arr[i];

  content += "\ndb.cars.insert({";

  Object.keys(obj).forEach((key, index) => {

    if (Object.prototype.toString.call(obj[key]) === '[object Object]') {
      content += `"${key}":${JSON.stringify(obj[key])},`;
    }
    if (Object.prototype.toString.call(obj[key]) === '[object String]') {
      content += `"${key}":"${obj[key]}",`;
    }
    if (Object.prototype.toString.call(obj[key]) === '[object Boolean]') {
      content += `"${key}":${obj[key]},`;
    }
    if (Object.prototype.toString.call(obj[key]) === '[object Number]') {
      if (obj[key] % 1 === 0) {
        if (key === 'price') {
          content += `"${key}":${obj[key]},`;
        } else {
          content += `"${key}":NumberInt(${obj[key]}),`;
        }
      } else {
        content += `"${key}":${obj[key]},`;
      }
    }
  });
  content += "})\n";
}
console.log(content);

fs.writeFile('insert_copy.js', content, { flag: 'w' }, function (err) {
  if (err) {
    return console.error(err);
  }
  // exec('echo data write success - mongodb_load_data/insert.js');
  // exec('mongo --nodb mongodb_load_data/insert.js');
});
```

## mongoose 不使用__v的办法
```javascript
var schema = new mongoose.Schema({
  name: 'string',
  age : 'number',
  sex : 'string'
}, { versionKey: false }); //不要__v的操作
```
参考: <http://aaronheckmann.tumblr.com/post/48943525537/mongoose-v3-part-1-versioning>

## mongodb 导入数据命令
```bash
// mongodb 导入数据命令
mongoimport --db cardb --collection cars --file /Users/stone/cardata.json --drop
// --db cardb  想往哪个数据库里面导入
// --collection student  想往哪个集合中导入
// --drop 把集合清空
// --file primer-dataset.json  哪个文件
```

## mongoose 关闭数据库链接操作
参考: <https://stackoverflow.com/questions/8813838/properly-close-mongooses-connection-once-youre-done>

```javascript
Student.find({ name: 'stone' }, function (err, docs) {
  // docs.forEach
  console.log(docs);
  mongoose.disconnect();
});
```

## mongo --eval 运行一段脚本

`不进入交互模式`，直接在 OS 的命令行下运行一段mongodb脚本。

参考: <https://blog.csdn.net/wershest/article/details/72898393>

<https://stackoverflow.com/questions/7352773/mongo-dbname-eval-db-collection-find-does-not-work>

**原来find()要这么写 - - 这资料可上哪搜去...**
```bash
mongo 192.168.0.33:27017/studb --eval "db.students.find({}).forEach(printjson)"
```

```bash
mongo localhost:27017/studb --eval "printjson(db.students.findOne({'name':'stonepark'}))"
```

**非交互 加载js文件**
```bash
mongo 192.168.0.33:27017/studb search.js
```

**交互模式 加载js文件**
```bash
load("/Users/stone/soft/shell/search.js")
```
load() 参数中的文件路径，既可以是相对路径，也可以是绝对路径。
在mongo shell下查看当前工作路径的方法： pwd( )

**在js文件中建立数据库连接**

上面所有的例子，都是在运行mongo命令时，直接连接数据库 (127.0.0.1:27017/test)。 我们也可以在js脚本中建立数据库连接，上面的第三种方法可以这么写：
search001.js 文件内容：
```javascript
conn = new Mongo("192.168.0.33:27017");
db   = conn.getDB("studb");
db.students.find({}).forEach(printjson);
```
在命令行下运行：
```bash
mongo --nodb search001.js
```



## macOS 上使用 brew 安装 MongoDB

<https://juejin.im/post/5d9d7ad66fb9a04e373163c3>



## Robo 3T 无法连接 4.2 mongodb的问题 , 升级到1.3版本即可解决问题…蛋疼...

<https://github.com/Studio3T/robomongo/issues/1566>



## mongoDB 远程连接设置 与 认证 以及导入导出

<https://blog.csdn.net/u013236043/article/details/100985487>

<https://www.cnblogs.com/study10000/p/11127091.html>





---

```
mongoimport --host 47.95.4.215 --authenticationDatabase xxx --port 27017 -u xxx -p xxx -d douban -c movies --type=json --file ./movies.json
```



<https://stackoverflow.com/questions/45576367/mongoose-connection-authentication-failed>

mongoose 远程连接

```javascript
const options = {
      useNewUrlParser   : true,
      useCreateIndex    : true,
      useFindAndModify  : false,
      useUnifiedTopology: true,
      //   useFindAndModify: false,
      //   // // Don't build indexes 不要建立索引
      //   // autoIndex        : false,
      //   // // Never stop trying to reconnect 永远不要停止尝试
      //   // reconnectTries   : Number.MAX_VALUE,
      //   // // Reconnect every 500ms 每一次重新连接
      //   // reconnectInterval: 500,
      //   // // Maintain up to 10 socket connections 维护最多10个套接字连接
      //   // poolSize         : 10,
      //   // // If not connected, return errors immediately rather than waiting for reconnect
      //   // // 如果未连接，则立即返回错误，而不是等待转接。
      //   // bufferMaxEntries : 0,
      //   // // Give up initial connection after 10 seconds 10秒后放弃初始连接
      //   // connectTimeoutMS : 10000,
      //   // // Close sockets after 45 seconds of inactivity 45秒后关闭
      //   // socketTimeoutMS  : 45000,
      //   // // Use IPv4, skip trying IPv6 使用，跳过尝试IPv 6
      //   family          : 4,
      'user'            : 'xxx',
      'pass'            : 'xxx',
      'authSource'      : 'xxx',
    }
```

## Working fine for me on Mongodb 4.2 and Mongoose 5.7.13

**Node.js**

```js
const Connect = async () => {

    let url = "mongodb://localhost:27017/test_db";

    try {

        let client = await Mongoose.connect( url, {
            poolSize: 10,
            authSource: "admin",
            user: "root",
            pass: "root123", 
            useCreateIndex: true,
            useNewUrlParser: true,
            useUnifiedTopology: true
        } );

        log( "Database is connected!" );
    } catch ( error ) {
        log( error.stack );
        process.exit( 1 );
    }

}
Connect();
```





## Node.js 使用 MongoDB 的 ObjectId 作为查询条件

<https://blog.csdn.net/kkkloveyou/article/details/100177735>

const ObjectId = require('mongodb').ObjectId;

```
const ObjectId                 = mongoose.Types.ObjectId
```

```
{ $match: { category: { $elemMatch: { $eq: ObjectId('5f13da48f87219653e9a5f97') } } } },
```





## `MongoDB中的$in和$elemMatch`

<http://towriting.com/blog/2015/01/15/mongodb-in-elem/>

```javascript
db.items.find({"tags": {$elemMatch: {$eq: "哲理"}}})
db.items.find({"tags": {$in: ["哲理"]}})
```

