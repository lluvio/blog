---
title: "为 Vue 编写一个插件2"
description: "Description of the post"
date: 2017-03-23
---

以编写Vue日志插件为例，讲述从插件的开发到部署。

<!--more-->


# 代码初始

不用一步到位开发插件，先抛开 Vue保证自己的代码能够运行

```js
var logger = {
  debug: false,
  prefix: 'Yunhuni:'
}

let levels = ['log', 'info', 'warn']
for (let level of levels) {
 logger[level] = function() {
  if (!this.debug) return;
  if (typeof console == "undefined") return;
  var slice = Array.prototype.slice;
  var args = slice.call(arguments, 0);
  args.unshift(this.prefix + level);
  console[level].apply(console, args);
 }
}

logger.log('aaaa')
logger.info('aaaa')
logger.warn('aaaa')
```


# 编写成Vue的插件

上面代码能跑了，然后再根据[ 文档](https://cn.vuejs.org/v2/guide/plugins.html) 接入我们的代码

```js

const vLogger = {}
vLogger.install = function (Vue, options) {
  if (vLogger.installed) return
  var logger = {
    dev: true,
    prefix: '',
    levels: ['log', 'warn', 'debug']
  }
  if (options) {
    for (const key of Object.keys(options)) {
      if (key === 'levels') {
        logger[key] = logger[key].concat(options[key])
      } else {
        logger[key] = options[key]
      }
    }
  }
  for (const level of logger.levels) {
    logger[level] = function () {
      if (!this.dev || typeof console === 'undefined') return
      var args = Array.from(arguments)
      args.unshift(`[${this.prefix} :: ${level}]`.toUpperCase())
      console[level].apply(console, args)
    }
  }
  Vue.prototype.$log = logger
  Vue.log = logger
}
export default vLogger
```


# 使用

```js
import vueLogger from './logger'
Vue.use(vueLogger, { prefix: new Date(), dev: true })

// @test.vue
this.$log.log('hello vue log') // => [MON DEC 05 2016 15:35:00 GMT+0800 (CST) :: LOG] hello world
```


## 参数

| name   | type    | default                    |
| ------ | ------- | -------------------------- |
| prefix | string  | none                       |
| dev    | boolean | true                       |
| levels | array   | ['log', 'warn', 'default'] |


# 编写测试用例

使用jasmine，这里以测试参数 options 为例子

```js
// 测试 参数 level
import Vue from 'vue'
import Logger from '../../src/index.js'

describe("this.$log", function() {

  Vue.use(Logger)
  const vm = new Vue()
  const str = 'hello world'

  it("level log out hello world", function() {
    expect(vm.$log.log).toBeDefined()
    vm.$log.log = jasmine.createSpy('log')
    vm.$log.log(str)
    expect(vm.$log.log).toHaveBeenCalledWith(str);
  });

  it("level debug out hello world", function() {
    expect(vm.$log.debug).toBeDefined()
    vm.$log.debug = jasmine.createSpy('debug')
    vm.$log.debug(str)
    expect(vm.$log.debug).toHaveBeenCalledWith(str);
  });

  describe("Vue log", function() {
    it("level debug out hello world", function() {
      expect(vm.$log.debug).toBeDefined()
      Vue.log.debug = jasmine.createSpy('debug')
      Vue.log.debug(str)
      expect(Vue.log.debug).toHaveBeenCalledWith(str);
    });
  });
});
```


# 部署


## 如何选择开源许可证

参考阮老师的[文章](http://www.ruanyifeng.com/blog/2011/05/how_to_choose_free_software_licenses.html)


## 添加项目徽章

通过这些微章简单直白的了解该项目的状态。 可以在这个[网站](http://shields.io/) 获取你想要svg，一般格式如下

```html
![Ci](https://img.shields.io/circleci/project/github/Lluvio/vue-logger.svg)
```

想要图标点击可跳转

```html
[![Ci](https://img.shields.io/circleci/project/github/Lluvio/vue-logger.svg)](https://circleci.com/gh/Lluvio/vue-logger)
```


# 发布

首先需要在本地添加 npm 用户

```bash
# 账号密码和你在 npm 官网注册的账号一致
npm adduser

# 然后登入
npm login

# 发布
npm publish .
```

如果想要指定特定标签，参考 [这里](https://docs.npmjs.com/cli/publish)


## publish 失败

出现以下错误，有可能是代理地址错误，每个命令后都需要带上 `--registry http://registry.npmjs.org`

```bash
no_perms Private mode enable, only admin can publish this module
```

如果是这个错误 `Tag name must not be a valid SemVer range` ，那么需要你重现登入


# 最后

最终结果在[这里](https://github.com/Lluvio/vue-logger)， 欢迎指正!