---
title: "Svg Sprite 的使用及性能提升"
description: "Description of the post"
date: 2018-10-24
---



相信大家对 SVG （可缩放矢量图形，Scalable Vector Graphics）并不陌生，它的优点体积小、可复用、可伸缩等等，这些都是不可抗拒的诱惑。

<!--more-->

不知道 SVG 的同学可以在 [这里](http://javascript.ruanyifeng.com/htmlapi/svg.html) 了解下。Svg Sprite 也是 替代 CSS Sprite 的方案。目前大家会使用到相关的解决方案普遍是阿里的 Iconfont 。下面对这两种方式从打包大小，加载时间和 Performance 三个方面进行比较。



先直接上结论，Svg Sprite 相较于阿里 Iconfont 的优势

1. 不用每次去官网重新下载，而且官网下载还限制数量只能到20！Svg Sprite Loader 更加自动化，可以利用 `reuiquire.ensure` 引入素材
2. 通过路由动态加载，在需要的地方引入使用，不用一次性全部引入
3. 鉴于第二点可以得出通过动态加载也是网络上的优化，有利于加载速度，首屏体验会更加良好
4. 可以减少打包整体的体积



*接下来是实验分析，先声明以下实验样本单一，准确性需要自己去考察！*

## 打包大小

Webpack 未引入 Iconfont 打包前

![](/images/svg-sprite/03997D44-025B-439A-8462-DA214A06F425.png)

Webpack 使用 Iconfont  引入55个 SVG 打包后，整体多了54k

![](/images/svg-sprite/754C2E8A-47CC-4352-9B08-53681913F924.png)

Webpack 使用 Svg Sprite Loader 在没有引入 SVG 文件打包前

![](/images/svg-sprite/03997D44-025B-439A-8462-DA214A06F425%201.png)

Webpack 使用 Svg Sprite Loader 引入50 个 SVG 后，结果如下

![](/images/svg-sprite/179B571C-F182-46CD-83EE-8430BFDF84DF.png)



整体 270.46k，相较于 Iconfont 的287.6k，少了17.14k



## 加载时间

以下网络均限制到 `fast 3g`

1. 使用 Svg Sprite Loader 首屏载入4个 svg  文件后加载的时间
  ![](/images/svg-sprite/710DAC2D-A989-426A-A238-B5A5355E2286.png)


2. 使用 Iconfont 所使用的时间 ，Iconfont 的缺点是会一次性载入 54kb，时间相对也会慢些
  ![](/images/svg-sprite/A9ED0FD8-8107-4345-A3C0-947228E393BA.png)



Svg sprite loader 为什么只引入四个呢？因为我在这里加了两个前提条件。一个是异步加载在来测试当 SVG 是异步加载的时候会带来多少加载时间的提升。另一个是首屏 SVG 数量不会很多，差不多保持在4个左右。



## 绘制与合成

同样在异步加载的前提条件下使用 Svg Sprite Loader 首屏载入4个svg 文件后绘制的时间

![](/images/svg-sprite/93EBB12C-5615-4A23-B259-64BCF8221555.png)

使用 Iconfont 55个 svg 后的绘制时间

![](/images/svg-sprite/67DB6363-AA30-49A7-AB8F-14779442CD32.png)



可以看出使用 Svg Sprite Loader 提升还是有那么一点的



## 相关库及文档

* [svgo-loader](https://github.com/rpominov/svgo-loader)，Nodejs-based tool for optimizing SVG vector graphics files
* [svg-sprite-loader](https://github.com/kisenka/svg-sprite-loader)，Webpack loader for creating SVG sprites，该库有 [Examples](https://github.com/kisenka/svg-sprite-loader/tree/master/examples)
* 本人正在对 http://svgtutorial.com/ 内容进行粗略的翻译，[翻译文档](https://lluvio.github.io/blog/svg/#/)