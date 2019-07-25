---
title: "前端项目架构小结"
description: "Description of the post"
date: 2017-04-23
---



本人在实际工作中慢慢总结出来的项目组织结构小结，望对大家有帮助

<!--more-->

在团队开发上，大的方面往往是考虑以下两个，敲定后后续都是往优化方面发展

1. 决定基本的技术栈
2. 选定 组件库（企业内部或第三方），统一交互与视觉风格。

任何程序都逃脱不了输入(Input)、处理（Process）、输出（Output），这个概念放到项目开发中也是适用的，我们输入的是代码，通过编译处理，输出我们想要的结果。接下来我们就讲讲 IPO（上市？？）



## 1、输入

我们需要考虑输入的方面有程序语言、框架、图片、字体、动画以及第三方库，根据以上我们可以考虑以下方案：

>  程序语言：Typescript / Javascript
>
>  前端框架：Vue
>
>  字体：SVG
>



## 2、处理

处理即编译，涉及到 Babel 和 Webpack。

Babel 主要是将涉及新特性的 Javascript 代码转化为指定平台兼容的代码，例如 ES6/ES7 编译为 ES5。

Webpack 则可以对多种资源或代码进行多样化处理。

下面分别举几个常见的处理



### 2.1、Webpack

为引入模块提供别名，减少 webpack 查找引入模块位置的时间

```js
resolve: {
  alias: {
    ui: path.resolve(__dirname, 'app/compontens/ui'),
    fonts: path.resolve(__dirname, 'app/assets/fonts'),
    vue: 'vue/dist/vue.esm.js',
  }
}
```

同时也为我们开发中引入公用模块提供方便

```js
// JS
import modal from 'ui/modal.vue'

// CSS
@font-face {
    url( "~fonts/iconfont.woff") format('woff')
}
```

开发的时候我们肯定有使用 console 调试代码习惯，上线时却忘记去除

```js
new webpack.optimize.UglifyJsPlugin({
  compress: {
    warnings: false,
    pure_funcs: [ 'console.log', 'console.info' ]
  },
})
```

当然，我们也可以在上线前通过 ESLint 检测，检测出问题时再进行注释或删除，这或许比较麻烦



### 2.2、Babel

下面看个语法转换的例子

```js
// input
const talk = () => {
  console.log('hello world')
}

// output
var talk = function talk() {
  console.log('hello world');
};
```



## 3、输出

处理得到结果再由 Webpack 输出，这么说其实输出也是处理的一部分。在业务上涉及的主要功能则是：

1. 代码的压缩混淆（利用 uglifyjs）

2. 文件 Hash 命名

3. 模块按需分开打包（按需加载）

4. Tree Shaking（例如 ES6 模块引入是静态解析的机制）

   

## 4、规范化

IPO 制定完成之后，团队内基本已经有一套项目模板了，接下来注意力往往基建和规范化靠拢。

-   CSS 上注意采用一命名风格，推荐 BEM
-   采用统一的 ESLint 配置规则
-   注意接口是否符合 Restful API 的要求（服务端同学有时候不按常理出牌）
-   文件名一律小写，Git 在 Unix 和 Window 上对文件名大小写处理不一致，[参考](http://www.ruanyifeng.com/blog/2017/02/filename-should-be-lowercase.html)
-   项目徽章
-   性能错误监控
-   发布系统
-   and more



附上一个实例 [demo](https://github.com/lluvio/vue-element)，未完待续