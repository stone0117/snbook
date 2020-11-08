@(工作笔记)

# vue-record

[TOC]

---

![Alt text](./1527103132529.png)

```javascript
console.log('hello vue')
```
---

## vue2.0 `$router`和`$route`的区别

![Alt text](./1532329315090.png)
```
在vue2.0里页面参数是 this.$route.query或者 this.$route.params 接收router-link传的参数。

在路由跳转的时候除了用router-link标签以外需要在script标签在事件里面跳转，所以有个方法就是在script标签里面写this.$router.push('要跳转的路径名')，

 在写的时候发现这两个为什么不同，在控制台打出this的时候，发现$route和$router同时存在





$route为当前router跳转对象里面可以获取name、path、query、params等

$router为VueRouter实例，想要导航到不同URL，则使用$router.push方法

返回上一个history也是使用$router.go方法
```

## koa2 入坑

https://blog.csdn.net/hahei2020/article/details/74357259

---

## js & android & iOS 多种交互方式

android协议交互与模型注入 
https://blog.csdn.net/carson_ho/article/details/64904691/
oc 协议交互方式
https://www.cnblogs.com/peteremperor/p/6012969.html

---

## vue项目使用WebViewJavascriptBridge
http://mengyujing.com/vue%E9%A1%B9%E7%9B%AE%E4%BD%BF%E7%94%A8WebViewJavascriptBridge/

---

## 按需加载

https://segmentfault.com/a/1190000011426274



## export 两种情况
https://segmentfault.com/q/1010000008760434/a-1020000008760580

---

## css解决fixed布局不会出现滚动条的问题

https://blog.csdn.net/u014520745/article/details/52881300


如果我们布局的是后是fixed并且想要高度为100%的时候，我们一般会这样设置：
```
div {
    display:fixed;
    height:100%;
    overflow:scroll;
}
```
但是这样并不会出现滚动条，正确的做法应该设置top和bottom为0：
```
.fixed-content {
    top: 0;
    bottom:0;
    position:fixed;
    overflow-y:scroll;
    overflow-x:hidden;
}
```

---



## css calc 妙用 - -
https://blog.csdn.net/qq_17518593/article/details/52689178
```css
例如 ：设置div元素的高度为当前窗口高度-100px
     div{
       height: calc(100vh - 100px);     
    }
可以这么写...
```

## 仿饿了么H5
https://www.jianshu.com/p/65c957b228e9

---

## vm.$nextTick( [callback] )

```javascript
new Vue({
  // ...
  methods: {
    // ...
    example: function () {
      // 修改数据
      this.message = 'changed'
      // DOM 还没有更新
      this.$nextTick(function () {
        // DOM 现在更新了
        // `this` 绑定到当前实例
        this.doSomethingElse()
      })
    }
  }
})
```

---

## backdrop-filter 和filter 写出高斯模糊效果 以及两者区别
https://www.cnblogs.com/wyan20/p/6558034.html

---

## vue原码解读
http://hcysun.me/vue-design/

## Vue.nextTick 的原理和用途
https://segmentfault.com/a/1190000012861862

## 生命周期
https://segmentfault.com/a/1190000008010666

## console命令详解
https://www.cnblogs.com/pengfei25/p/6019525.html

---

## vue cli 3.0

```bash
vue create vue_cli_test
```
![Alt text](./1551733781051.png)
![Alt text](./1551733826617.png)
![Alt text](./1551733892415.png)
![Alt text](./1551733903105.png)
![Alt text](./1551733974424.png)
![Alt text](./1551734016689.png)
![Alt text](./1551734072259.png)

**my eslint**
```javascript
  rules        : {
    // allow async-await
    'generator-star-spacing'            : 'off',
    // allow debugger during development
    'no-debugger'                       : process.env.NODE_ENV === 'production' ? 'error' : 'off',
    // edit by stone
    'no-multi-spaces'                   : 'off',
    'key-spacing'                       : 'off',
    'semi'                              : 'off',
    'comma-dangle'                      : 'off',
    'object-curly-spacing'              : 'off',
    'indent'                            : 'off',
    'no-unused-vars'                    : 'off',
    'block-spacing'                     : 'off',
    'no-multiple-empty-lines'           : 'off',
    'no-trailing-spaces'                : 'off',
    'standard/object-curly-even-spacing': 'off',
    'spaced-comment'                    : 'off',
    'camelcase'                         : 'off',
    'func-call-spacing'                 : 'off',
    'padded-blocks'                     : 'off',
    'import/first'                      : 'off',
    'space-before-function-paren'       : 'off',
    'handle-callback-err'               : 'off',
    'object-property-newline'           : 'off',
    'comma-spacing'                     : 'off',
	'quotes'                            : 'off',
    'no-unneeded-ternary'               : 'off',
	'vue/no-unused-components'          : 'off',
    'no-return-await'                   : 'off',
  },
```

## 预处理器
你可以在创建项目的时候选择预处理器 (Sass/Less/Stylus)。如果当时没有选好，内置的 webpack 仍然会被预配置为可以完成所有的处理。你也可以手动安装相应的 webpack loader：
```
# Sass
npm install -D sass-loader node-sass

# Less
npm install -D less-loader less

# Stylus
npm install -D stylus-loader stylus
```
然后你就可以导入相应的文件类型，或在 *.vue 文件中这样来使用：
```
<style lang="scss">
$color: red;
</style>
```

```
<style scoped lang="scss" rel="stylesheet/scss">
  .Users {
    /* important code */
    height: 100%

  }
</style>

<style scoped lang="stylus" rel="stylesheet/stylus">
  .Users {
    /* important code */
    height: 100%    
  }
</style>

<style scoped lang="less" rel="stylesheet/less">
  .Users {
    /* important code */
    height: 100%
    
  }
</style>
```

## vue add axios
vue 3.0 插件添加方式

## vue.config.js

```javascript
const eleme = require('./data/eleme.json')

module.exports = {
  // "baseUrl" option in vue.config.js is deprecated now, please use "publicPath" instead.
  // baseUrl  : '/', // 根路径
  publicPath: '', // 相对路径
  outputDir : 'dist', // 构建输出目录
  assetsDir : 'assets', // 静态资源目录(js,css,img,fonts)
  lintOnSave: false, // 是否开启eslint 保存检测, 有效值: true || false || 'error'

  devServer: {
    // open   : false, // 当启动项目的时候 是否自动打开浏览器
    // host   : '0.0.0.0',
    // port   : 9000,
    // https  : false, // 会有警告..
    // hotOnly: false, // webpack 查看具体信息 [hotOnly](https://webpack.js.org/configuration/dev-server/#devserverhotonly)
    proxy: {
      // proxy all requests starting with /api to jsonplaceholder
      '/data': {
        target      : 'http://localhost:8080',   //代理接口
        changeOrigin: true,
        pathRewrite : {
          '^/data': '',    //代理的路径
        },
      },
    },
    // 本地数据, 模拟请求
    before (app, server) {
      // http://localhost:8081/data/eleme
      app.get('/data/eleme', function (req, res) {
        res.json(eleme)
      })
    },
  },
}
```


## 路由

```javascript
/* eslint-disable object-property-newline,comma-spacing */
import Vue           from 'vue'
import Router        from 'vue-router'
import Home          from './components/Home'
import Menu          from './components/Menu'
import Login         from './components/Login'
import Register      from './components/Register'
import Admin         from './components/Admin'
import About         from './components/about/About'
// 二级路由
import Contact       from './components/about/Contact'
import Delivery      from './components/about/Delivery'
import History       from './components/about/History'
import OrderingGuide from './components/about/OrderingGuide'
// 三级路由
import Phone         from './components/about/contact/Phone'
import PersonName    from './components/about/contact/PersonName'

Vue.use(Router)

// 路由独享的守卫
function adminBeforeEnter (to, from, next) {
  next()
  // alert('请登录管理员...')
  // next(false)

  // if (to.path === '/login' || to.path === '/register') {
  //   next()
  // } else {
  //   alert('请登录管理员...')
  //   // next('/login')
  //   next({ name: 'login' })
  // }
}

let router = new Router({
  routes: [
    {
      path: '/', name: 'home', components: {
        default      : Home,
        orderingGuide: OrderingGuide,
        delivery     : Delivery,
        history      : History,
      },
    },
    { path: '/menu', name: 'menu', component: Menu },
    { path: '/login', name: 'login', component: Login },
    { path: '/register', name: 'register', component: Register },
    // { path: '/admin', name: 'admin', component: Admin, beforeEnter: adminBeforeEnter },
    { path: '/admin', name: 'admin', component: Admin },
    {
      path: '/about', name: 'about', redirect: { name: 'contact' }, component: About, children: [
        {
          path: '/about/contact', name: 'contact', redirect: { name: 'phone' }, component: Contact, children: [
            { path: '/phone', name: 'phone', component: Phone },
            { path: '/personname', name: 'personName', component: PersonName },
          ],
        },
        { path: '/delivery', name: 'delivery', component: Delivery },
        { path: '/history', name: 'history', component: History },
        { path: '/orderingGuide', name: 'orderingGuide', component: OrderingGuide },

      ],
    },

    { path: '*', redirect: '/' },

    // { path: '/about', name: 'about', component: () => import(/* webpackChunkName: "about" */ './views/About.vue') },
    // { path: '/about', name: 'about', component: () => import(/* webpackChunkName: "about" */ './views/About.vue') },
    // { path: '/about', name: 'about', component: () => import(/* webpackChunkName: "about" */ './views/About.vue') },
    // { path: '/about', name: 'about', component: () => import(/* webpackChunkName: "about" */ './views/About.vue') },
    // {
    //   path     : '/about',
    //   name     : 'about',
    //   // route level code-splitting
    //   // this generates a separate chunk (about.[hash].js) for this route
    //   // which is lazy-loaded when the route is visited.
    //   component: () => import(/* webpackChunkName: "about" */ './views/About.vue'),
    // },
  ],
  mode  : 'history',

  scrollBehavior (to, from, savedPosition) {

    // return { x: 0, y: 100 }
    // return { selector:'.btn' }

    if (savedPosition) {
      return savedPosition
    } else {
      return { x: 0, y: 0 }
    }
  },
})

// 全局守卫
// router.beforeEach(function (to, from, next) {
//   // alert('还没有登录, 请先登录')
//   // console.log(JSON.stringify(to, null, 2));
//   // console.log(JSON.stringify(from, null, 2));
//   // console.log(next);
//
//   if (to.path === '/login' || to.path === '/register') {
//     next()
//   } else {
//     alert('还没有登录, 请先登录')
//     // next('/login')
//     next({ name: 'login' })
//   }
// })

// 后置钩子
// router.afterEach(function (to,from) {
//     alert('after each')
// })

export default router

```

## 后退不刷新数据

```
<template>
  <div class="Home">
    <div class="flex-column" :style="{width: '100%', height: '100%'}">
      <Menu mode='horizontal' :style="{fontSize: 13.5, backgroundColor: '#000'}">
        <Menu.Item :style="{ marginLeft : 24, marginRight: 30, fontSize: 18, textAlign: 'center', color: '#fff2e8 !important', float: 'left' }">
          <a href='/' class='hover-scale logo-text' :style="{color: '#fff2e8'}">StonePark预告片网站</a>
        </Menu.Item>
        <Menu.Item v-for="(e) in navRoutes" :key="e.name">
          <a :href="e.path" :style="{color: '#fff2e8'}">{{e.name}}</a>
        </Menu.Item>
      </Menu>
      <!--<Spin :spinning="spinning" :tip="tip" wrapperClassName="content-spin full">-->
      <Spin :spinning="spinning" :tip="tip" wrapperClassName="full">
        <div class='flex-row full'>
          <div class='flex-1 scroll-y align-self-start'>
            <Content :movies="movies"></Content>
          </div>
        </div>
      </Spin>
    </div>
  </div>
</template>

<script type="text/ecmascript-6">
  import request                from '../../lib/request';
  import { Menu, Spin, Switch } from 'ant-design-vue';
  import navRoutes              from '../../nav';
  import axios                  from 'axios';
  import Content                from '../../components/Content';

  export default {
    // props     : ['users'],
    // props     : {
    //   users: {
    //     type    : Array,
    //     required: true,
    //   },
    // },
    components: {
      Menu,
      'Menu.Item'     : Menu.Item,
      'Menu.ItemGroup': Menu.ItemGroup,
      'Menu.SubMenu'  : Menu.SubMenu,
      Spin,
      'a-switch'      : Switch,
      Content,
    },
    name      : 'Home',
    data () {
      return {
        current  : ['mail'],
        navRoutes: navRoutes,
        tip      : 'wait for seconds',
        movies   : [],
        spinning : true,
      };
    },
    /** methods */
    methods   : {

      changeSpinning () {
        this.spinning = !this.spinning;
      },
      getMovies () {
        axios({
          timeout: 5000, method: 'get',
          // url    : `/data/api/v0/movies`,
          url    : `http://localhost:8080/api/v0/movies`,
        }).then(res => {
          const { success, data, err, code } = res.data;
          if (code === 401) {
            window.location.href = '/';
          } else if (success) {
            this.changeSpinning();
            this.movies = data;
          } else {
            throw err;
          }
        }).catch(err => {
          throw err;
        });
      },
    },
    /** computed */
    computed  : {},

    mounted () {
      this.getMovies();
    },

    beforeDestroy () {
      // window.__LOADING__ = null
    },
    beforeRouteEnter (to, from, next) {
      for (let key in from) {
        console.log(key, from[key]);
      }
      console.log('■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■');
      if (from.name === 'detail') {
        to.meta.needToRefresh = false;
      }
      next();
      // next(function (vm) {
      //   alert('hello ' + vm.name)
      // })
    },
    beforeRouteLeave (to, from, next) {
      next();
      // if (confirm('确定离开吗?') === true) {
      //   next()
      // } else {
      //   next(false)
      // }
    },
    activated () {
      //开启了keepAlive:true后再次进入，以前的搜索条件和页数都不会变，无论什么情况都调用一下获取数据的接口，这样就能得到当前搜索条件和页数的最新数据
      if (this.$route.meta.needToRefresh) {
        //重置ifDoFresh
        this.$route.meta.needToRefresh = false;
        this.getMovies();
      } else {

      }
    },
  };
</script>

<!--cnpm i -D less less-loader stylus stylus-loader node-sass sass-loader-->
<!--<style scoped lang="less" rel="stylesheet/less">-->
<!--<style scoped lang="stylus" rel="stylesheet/stylus">-->
<style lang="scss" rel="stylesheet/scss">

  .Home {
    /*a {*/
    /*color : #fff !important;*/
    /*}*/
  }

</style>


# router.js

import Vue    from 'vue';
import Router from 'vue-router';

Vue.use(Router);

let router = new Router({
  // mode: 'history',
  // base: process.env.BASE_URL,
  routes: [
    {
      path: '/', name: 'home', component: () => import(/* webpackChunkName: "about" */ './views/home/Home.vue'),
      meta: {
        keepAlive    : true,
        needToRefresh: false,
      },
    },
    {
      path: '/detail/:id', name: 'detail', component: () => import(/* webpackChunkName: "detail" */ './views/movie/Detail.vue'),
    },
    {
      path: '/admin', name: 'admin', component: () => import(/* webpackChunkName: "admin" */ './views/admin/Admin.vue'),
    },
    {
      path: '/admin/list', name: 'list', component: () => import(/* webpackChunkName: "list" */ './views/admin/List.vue'),
    },
    {
      path: '/about', name: 'about', component: () => import(/* webpackChunkName: "about" */ './views/About.vue'),
    },
    { path: '*', redirect: '/' },
  ],
});

export default router;

```

## .vue 文件支持 jsx语法
```
Please vote for https://youtrack.jetbrains.com/issue/WEB-26839;

note that you can specify script type explicitly in .vue file (<script type="text/jsx">)  to get JSX recognized
```

---

## Vue项目调试总结-WebStorm+Chrome调试
http://ju.outofmemory.cn/entry/354985

## URL中的hash（井号）
https://www.cnblogs.com/joyho/articles/4430148.html

---

##  styleus 转 SCSS
![Alt text](./1563244312936.png)





## 解决 vue 项目一直出现 sockjs-node/info?t=1554978**** ，并造成浏览器不能及时更新编码改动结果

<https://blog.csdn.net/gulang03/article/details/89217273>

翻墙全局模式 不能实时刷新 蛋疼...



## vue-cli3安装 和vue-cli2继续使用

https://www.jianshu.com/p/efb2b117dc5c



```plain
官方链接：https://cli.vuejs.org/zh/guide/installation.html

1.安装Vue cli3

关于旧版本

Vue CLI 的包名称由 vue-cli 改成了 @vue/cli。 如果你已经全局安装了旧版本的 vue-cli(1.x 或 2.x)，你需要先通过 npm uninstall vue-cli -g 或 yarn global remove vue-cli 卸载它。



Node 版本要求

Vue CLI 需要 Node.js 8.9 或更高版本 (推荐 8.11.0+)。你可以使用 nvm 或 nvm-windows在同一台电脑中管理多个 Node 版本。



可以使用下列任一命令安装这个新的包：

npm install -g @vue/cli

# OR

yarn global add @vue/cli

安装之后，你就可以在命令行中访问 vue 命令。你可以通过简单运行 vue，看看是否展示出了一份所有可用命令的帮助信息，来验证它是否安装成功。

你还可以用这个命令来检查其版本是否正确 (3.x)：

vue --version

2.安装完Vue cli3 之后，还想用vue-cli2.x 版本

Vue CLI 3 和旧版使用了相同的 vue 命令，所以 Vue CLI 2 (vue-cli) 被覆盖了。如果你仍然需要使用旧版本的 vue init 功能，你可以全局安装一个桥接工具：

npm install -g @vue/cli-init

//安装完后 就还可以使用 vue init 命令

vue init webpack my_project

安装vue-cli3.0时：

npm 警告：过时的 core-js @ 1.2.7；2.6.8版本以前的core-js都不再保留，请升级到core-js@3版本或者至少@2版本报错

解决方法：

npm install --save core-js@^3
```

