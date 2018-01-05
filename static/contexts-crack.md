---
title: "Contexts Crack"
description: "Description of the post"
date: 2018-01-02
---

本文主要描述破解 Contexts 的过程

<!--more-->

## 基本汇编指令

本文章需要了解的汇编指令

```
mov dest target ; 将 target 赋值给 dest
call xxx ; 调起一个 xxx 方法
jmp ; 无条件跳转
ret ; 返回
```



## Contexts Crack

这里简单讲讲破解  [Contexts](https://contexts.co/) 的流程，Contexts 是一个有试用期的收费软件，价格 `$9.99`。我们通过 `Hopper Disassembler` 反汇编工具打开 Contexts。

因为是试用的，所以我们可以很快的通过 `trial` 关键字找到一些相关函数。我在这里顺藤摸瓜，找到了 `checkStatus` 函数，一看这个函数就是检查 状态之类的意思

![check1](/images/contexts-0.jpeg)

我们打开 `Hopper Disassembler` 提供的伪代码模式，可以看到一个关键单词 `isAppLicensed`。其实这里是调用名为 `isAppLicensed` 的 函数，将其返回结果与 `0x0` 比较。那接下来我们是不是可以猜测，这个条件语句成立即表示应用未授权呢？

![check2](/images/contexts-3.jpg)



我们回头把将汇编代码改成如下图显示的内容。现在这个函数直接返回 `0x1`，即 `isAppLicensed` 返回始终不等于 `0x0` ，所以上图条件成立的情况将不存在，直接走到 `return`，什么事情都不会发生

![step1](/images/contexts-1.jpg)



可以再看看还有什么地方使用了这个函数，如下，发现这个函数只被引用一次

![step2](/images/contexts-2.jpg)



好，contexts 的破解结束。破解归破解，希望能从软件上得到帮助的同学能够支持作者！



## 其他

这里可以看到我仅仅是改变了函数返回的值，这也是破解带有试用期软件的常用手段

```
mov target, value ; 这里的 value 可以是 0x0/0x1
ret
```

但需要云计算的软件不好破解，因为你下载的程序不带完整功能，核心功能也许就是服务器端计算运行的，例如图像识别，这类情况下你的每一步操作需要全程联网，每一步操作都有可能被服务器校验。



## 参考资料

1. [基本指令大全](http://c9x.me/x86/)
2. [所有软件都可以被破解吗？](https://www.zhihu.com/question/29372527)





