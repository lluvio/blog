
如果您已经知道如何使用JavaScript和HTML进行网络编程，学习曲线将变得相当温和，特别是考虑到获得的好处。- [David Dailey](http://www.w3.org/Graphics/SVG/IG/resources/svgprimer.html)

欢迎*使用SVG运行*。这是与同名的Mijingo视频课程一起出版的书面教程。如果您想使用我们的100多分钟视频课程学习更快，可以从Mijingo网站上获取。

否则，请阅读您认为适合的任何订单。该课程是按顺序阅读和完成的，但您可能会在此处了解具体内容。目录列在主页上，如果您需要快速找到您要查找的内容。

最后有一个非常重要的部分，其中包含了几十个链接到[SVG上更高质量的资源](http://svgtutorial.com/additional-tools-and-resources)。不要错过，特别是如果您已经熟悉SVG。

本课程分为几个部分。我们将慢慢学习一些SVG，然后使用 Adobe Illustrator 创建我们的第一个 SVG 文件。之后，我们将跳入代码，绘制坐标系上的一些点，使形状变得生动。我们将通过使用 CSS 和 JavaScript 操作 SVG 来构建，然后看到浏览器支持和性能可能面临的一些挑战。

准备好了？我们继续吧！



## 什么是SVG？

SVG代表可伸缩矢量图形。它是一种XML语言和文件格式，它允许您编写通过CSS或JavaScript进行缩放和调整的二维图形。

[来自W3C的SVG](http://www.w3.org/Graphics/SVG/IG/resources/svgprimer.html)：

> SVG是一种XML语言。这对至少有三个原因很重要。首先，代码往往遵守SVG如何编写以及客户端软件应如何响应的一致标准。第二，像所有的XML一样，它是用文本写的，通常不仅可以由机器读取，也可以由人类读取。第三，也许最重要的是，JavaScript可以用于操作对象和文档对象模型，方式与JavaScript如何与HTML结合使用非常相似。如果您已经知道如何使用JavaScript和HTML进行网络编程，学习曲线将变得相当温和，特别是考虑到获得的好处。

SVG可以是一个静态图像，像一个标志或插图，或一个复杂的动画。在本课程中，我们将主要讨论SVG的静态版本，但我们稍后会介绍动画。

所有SVG图形都绘制在至少一个`x`和`y`轴的坐标系上。在创作SVG时，我们给出浏览器说明，在坐标系上绘制点的位置并将其连接起来。通过连接绘制点，我们可以创建形状，线条或路径。

因为SVG是基于向量的，当图形被放大时，没有任何劣化或者失真的保真度。它们只是重新绘制以适应较大的尺寸。这使得这个完美的多语境场景，如响应网页设计。

您对SVG的曝光最有可能来自网页设计和前端开发社区。我写了这个课程。我们将从Web设计师或Web开发人员的角度来看SVG，大概就像你一样。在网页设计世界中，SVG最常用于处理资源，否则我们将使用位图文件，如JPEG，PNG或GIF。

本课程的目标是让您将SVG熟悉为技术，让您立即在网页设计中使用它，并开发和开发项目，并为您提供一个坚实的基础。

在整个课程中，我将链接到相关资源，这将有助于您更多地了解SVG。此外，最后还有一长串资源供您访问。这些资源不仅对您的阅读非常好，而且还记录了我在创建课程中所做的研究。

让我们继续前进，开始学习和创建SVG。



## 为什么要使用SVG？

SVG可能是在您的网站上创建一些图形资源的好方法。

### 可扩展

这就是“S”代表什么。与传统图像（如PNG或JPG）不同，SVG可以轻松地从小到大，而不会损失质量或保真度。这是因为名称向量的“V”部分描述了使用在xy轴上绘制的连接点创建的一系列路径，形状等。

您可能已经注意到SVG最近在网页设计师和网络开发人员中重新受到青睐，因为SVG具有[更好的浏览器支持](http://svgtutorial.com/svg-browser-support)，改进的屏幕分辨率（例如iPhone，iPad，MacBookk和现在的新iMac上的Retina屏幕），以及响应式网页设计。

### 文件大小

使用SVG的另一个原因是因为文件大小。SVG通常是较小的文件。例如，我拿了一个大尺寸版本的我的Mijingo标志，[并将其转换为相同画布大小的SVG](http://codepen.io/mijingo/pen/anyBj)。PNG图像是30KB，SVG图像只有6 KB。大量节省，特别是如果您在需要精简绩效预算的网站上工作。

### 可修改

由于SVG不是位图图像，它们可以使用JavaScript和CSS轻松修改。这使得拥有基本SVG文件变得简单，并在不同的处理方式将其重新置于站点的多个位置。我们还可以使用CSS和JavaScript来操纵和动画SVG。

然而，SVG图像并不完美。理想情况下，您可以使用SVG进行图标，简单的线条图形以及可能的标识。SVG是在页面上多次使用的图像（如界面图标）的理想选择。



## SVG最短历史

我想让你正确的代码，所以我们会保持这个干净整洁（一个描述从未给予网络标准的创建过程）。这里包含SVG的最短（和不完全）历史。

SVG已经有大约15年了。SVG的第一个公开草案于1999年推出，直到几个月后才成为草稿。首次推出SVG一年半后，W3C于2000年8月发布SVG作为候选人推荐。

SVG的工作迅速发展，仅仅几年就出版了多篇“工作草案”。[1](http://svgtutorial.com/shortest-history-ever-of-svg/#fn:1)一些设计师和开发人员正在积极使用SVG，但是在浏览器支持得到改进之前，网页设计师和开发人员之间并没有吸引太多的热情。

现在[所有的现代浏览器都支持SVG](http://svgtutorial.com/svg-browser-support)，网站图形的使用也增加了。响应式网页设计的广泛应用和对前端开发的质量工具和实践的更多关注，仅增加了Web开发项目中SVG的使用。

当前版本的SVG是[SVG 1.1](http://www.w3.org/TR/SVG/)，它在2011年8月被发布为W3C建议书。

有关SVG历史的更多信息，我建议您阅读W3C wiki上[SVG](http://www.w3.org/Graphics/SVG/WG/wiki/Secret_Origin_of_SVG)页面的[秘密起源](http://www.w3.org/Graphics/SVG/WG/wiki/Secret_Origin_of_SVG)页面。它介绍了SVG的一些影响，包括PGML，VML和超图形标记语言。

或者，如果你没有很多的乐趣，我建议SVG早期的这个彻底的历史（1999-2004）：[W3C可伸缩矢量图形（SVG） - 历史](http://www.w3.org/Graphics/SVG/History)



[1.W3C ](http://www.w3.org/Graphics/SVG/IG/resources/svgprimer.html)[Primer↩](http://svgtutorial.com/shortest-history-ever-of-svg/#fnref:1)



## 使用SVG是否安全？

是。

在过去几年中，它比以往任何时候都得到更广泛的支持，现在可以将其用于生产项目。

![来自caniuse.com的SVG浏览器支持](http://svgtutorial.com/assets/chapters/svg-usage-report.png) *资料来源*：[可以使用](http://caniuse.com/#feat=svg)

您确实希望对仍在使用不受支持的浏览器的网站访问者考虑回退选项。这在Android移动设备上尤其如此，其中碎片化猖獗，许多较旧的设备不符合软件更新的资格。

一如以往，您应该参考自己的网站访问者统计信息（使用Google Analytics（分析）等工具）来确认有多少访问者使用不受支持的浏览器，然后从中做出相应的决定。

稍后我们将介绍如何处理[SVG浏览器支持和后退](http://svgtutorial.com/svg-browser-support)。



## 我们将使用的工具

本教程不需要任何不寻常的工具或技术。为了跟随，您需要访问以下内容：

- [Adobe Illustrator](http://www.adobe.com/products/illustrator.html)或其他能够绘制矢量图像的应用程序。
- [CodePen](http://codepen.io/) - 所有代码示例都被写出来，您可以使用CodePen轻松地编写和渲染SVG，以及编写我们的CSS和JavaScript。
- 终端（我在OS X上） - 用于运行[SVGO来缩小我们的SVG文件](http://svgtutorial.com/svg-and-performance)以获得更好的性能。
- Web浏览器 - 这是不用说，但它应该支持SVG。

如果您想观看本课程并编写SVG图像，并获得所有内容和代码示例 - 不要错过[使用SVG的“Up and Running”的全长视频课程版本](https://mijingo.com/products/screencasts/svg-tutorial?utm_medium=textlink&utm_source=svgtutorial&utm_campaign=SVG%20Tutorial&utm_content=the_tools_well_use)。



## 用工具创建SVG

在我们开始在我们的网页中使用SVG之前，让我们继续创建一些。我们将以几种不同的方式创建SVG。

首先，我们将通过在Adobe Illustrator中创建一个简单的插图并以SVG的形式导出来创建SVG。之后，我们将使用在线转换工具将现有图像（与我们在Illustrator中创建的相同徽标）转换为SVG。

SVG的编码将在下一节中介绍。别担

### 使用Adobe Illustrator创建SVG

在我们学习如何在我们的网页中使用SVG之前，我们先创建一个可以使用的文件。我们将从这家名为BIG Corporation的假冒公司开始标识。这是一个可怕的公司，他们有一个可怕的标志。但是我们的任务是创建他们的网站，所以让我们创建一个矢量版本的标志，所以它可以在所有上下文中很好地缩放。

您可能不对徽标或图稿制作负责，但您可能必须打开该文件并创建一个SVG。知道如何正确地进行操作是非常重要的，所以你的SVG看起来不错。

![大公司标志在Illustrator](http://svgtutorial.com/assets/chapters/big-company-logo-illustrator.png)

以下是您需要了解的内容：

#### 填写画板

艺术品应该填满整个画板或画布。这将确保您的SVG不会扩展到比实际艺术品更宽和更高。如果您保存SVG的空间超过您将SVG文件中的空格。

#### 转换为轮廓

至少应该选择插图中的任何文字，然后将其转换为轮廓。这很重要，因为我们希望SVG是一个便携式文件，而不是依赖其他资产，比如字体。您的SVG应该工作，而不需要特殊的字体。SVG会将徽标中的类型转为`path`元素。

![将文本转换为Adobe Illustrator中的轮廓](http://svgtutorial.com/assets/chapters/create-outlines-adobe-illustrator.png)

#### 另存为SVG

这是简单的部分！使用“另存为...”选项，将illustrator文件另存为SVG。

- 选择“SVG（.svg）”作为格式（不是“SVG压缩”），并命名您的SVG文件。
- 在下一个模式中，保留默认设置。
- 您可以使用底部的“SVG代码”按钮预览SVG代码。在保存之前，这是一个很好的方式来检查SVG。如果您没有将文件转换为轮廓，您将看到SVG中引用的字体。如果是这样，在保存之前返回并转换为轮廓！
- 将文件保存到硬盘驱动器。记下你保存的地方，因为我们以后需要它。

![保存为SVG](http://svgtutorial.com/assets/chapters/svg-export-options-adobe-illustrator.png)

### 将现有图像转换为SVG

注意SVG转换工具在线图像。其中一些实际上并没有将图像转换为SVG，这需要重新绘制图像并将其转换为一组坐标和线，而是将图像编码为base64。这是相当容易做，而不需要一个在线工具，并没有帮助我们，我们的目标是创建一个真正的SVG文件，而不是另一种形式的位图图像。

#### 矢量魔术

如果您必须将位图图像转换为SVG，我发现将图像转换为SVG的最佳在线工具是[Vector Magic](http://vectormagic.com/)。这个服务实际上跟踪并将图像绘制成SVG。我只是用Mijingo标志试了一下，但它可能是最好的简单的线条图案，如标志或图标。

Vector Magic确实需要为您的网络浏览器安装Adobe Flash。

![在Vector Magic中预览图像转换](http://svgtutorial.com/assets/chapters/vector-magic-preview.png)





## 用代码创建SVG

这可能不是你必须经常做的事情 - 因为我们已经使工具变得如此容易地以其他方式创建SVG图像 - 但是从头开始，知道如何在代码中创建SVG权限是很好的。对于本教程，我们将简单介绍基本原理。您可以在[完整的视频教程中](https://mijingo.com/products/screencasts/svg-tutorial?utm_medium=textlink&utm_source=svgtutorial&utm_campaign=SVG%20Tutorial&utm_content=creating_svgs_with_code)看到我通过编码所有这些示例。

SVG可以与组，路径，颜色和坐标变得复杂。这只是XML，所以结构并不难理解。你已经熟悉尖括号了，我敢肯定。但是知道如何插入坐标来渲染你想要的可以采取一些试验和错误。

### 绘图方形

这是SVG中的一个简单的矩形：

```
<svg width="400" height="400">
  <rect x="0" y="0" width="400" height="400" fill="#56A0D3" />
</svg>
```

我们从SVG标签开始，将视口的高度和宽度设置为400像素。

然后我们将使用矩形元素在我们的页面上创建一个正方形。

在这种情况下，由于我们没有特别定义我们的宽度和高度的测量单位，SVG视口和形状大小将被渲染为像素。我们可以在SVG中使用很多熟悉的单位：px，em，pt，in，cm，mm，pc，ex。您甚至可以将不同的元素设置为不同的测量单位。我们将在我们的例子中贴上像素。

在`rect`元素中，x和y坐标均为零，这意味着正方形将开始在视口的左上角绘制。我们希望矩形的宽度和高度也是400，与我们的视口大小相同。我们添加一个填充颜色，使它成为一个不错的卡罗莱纳州蓝色。

现在我们在广场内画一个正方形，所以我们可以嵌套它们。我们的第二个平方米需要稍小一点，因此它适合我们的大广场。这也需要从不同的坐标开始，因为我们不想重叠。

```
<svg width="400" height="400">
  <rect x="0" y="0" width="400" height="400" fill="#56a0d3" />
  <rect x="50" y="50" width="300" height="300" fill="#fff" />
</svg>
```

我们添加了另一个`rect`元素，但这次将x，y坐标设置为50.这将我们的绘图起始点向下沿y轴减少50像素，并将x轴乘以50像素。我们的第二个广场将开始画在第一个广场的左上角。

宽度和高度也需要更改为小于“包含”矩形。我们将使其高达300像素的宽度，使其适合内部。这个填充将是白色的，所以我们可以看到它。

我们再套一个广场。我们需要通过相同的设置，但只是开始我们的绘图进一步向下和跨越x，y轴。

```
<svg width="400" height="400">
  <rect x="0" y="0" width="400" height="400" fill="#56a0d3" />
  <rect x="50" y="50" width="300" height="300" fill="#fff" />
  <rect x="100" y="100" width="200" height="200" fill="#56a0d3" />
</svg>
```

这是最后一个正方形的第四个嵌套。

```
<svg width="400" height="400">
  <rect x="0" y="0" width="400" height="400" fill="#56a0d3"/>
  <rect x="50" y="50" width="300" height="300" fill="#fff" />
  <rect x="100" y="100" width="200" height="200" fill="#56a0d3" />
  <rect x="150" y="150" width="100" height="100" fill="#fff" />
</svg>
```

这是SVG的直接使用`rect`。在这个例子中，我们也只使用`width`和`height`属性设置我们的视口。我们可以在SVG中使用其他属性。我们先来看看`viewBox`属性。

#### `viewBox`

该`viewBox`属性可能是一个棘手的野兽，因为它的运行方式与预期的不同。Viewbox是要显示的SVG画布或视口的一部分。该属性适用于`svg`元素。

想想一下放大功能的功能，它只会给出图像的一个区域的细节，如产品图像。它`viewBox`会将其他所有内容复制出来，只显示在属性中指定的部分。其余的仍然在那里，但不只是您正在查看的框内。

我真的很喜欢Sara Soueidan把它放在她优秀的文章[SVG坐标系中](http://sarasoueidan.com/blog/svg-coordinate-systems/)：

> 我喜欢以与Google地图相同的方式使用ViewBox来显示SVG画布。您可以放大Google地图中的特定地区或区域; 该区域将是浏览器视口内唯一可见，扩大的区域。但是，您知道地图的其余部分仍然存在，但是它不可见，因为它超出了视口的边界 - 它被剪除。

视框需要四个值：`x`，`y`，`width`，和`height`。

如果我们想添加`viewBox`到我们的嵌套正方形，我们可以这样做：

```
<svg width="400" height="400" viewBox="0 0 400 400">
  <rect x="0" y="0" width="400" height="400" fill="#56a0d3" />
  <rect x="50" y="50" width="300" height="300" fill="#fff" />
  <rect x="100" y="100" width="200" height="200" fill="#56a0d3" />
  <rect x="150" y="150" width="100" height="100" fill="#fff" />
</svg>
```

我们设置`viewBox` `x`和`y`坐标为零，所以没有视口的裁剪。viewBox本身设置为400x400，与我们的SVG画布或视口相同。图像保持不变。

如果我们更新我们`viewBox`的高度和宽度为100，我们将裁剪viewBox结束的图像。

```
<svg width="400" height="400" viewBox="0 0 100 100">
  <rect x="0" y="0" width="400" height="400" fill="#56a0d3" />
  <rect x="50" y="50" width="300" height="300" fill="#fff" />
  <rect x="100" y="100" width="200" height="200" fill="#56a0d3" />
  <rect x="150" y="150" width="100" height="100" fill="#fff" />
</svg>
```

SVG中的所有内容将变得更大，因为`svg`元素（视口）中设置的高度和宽度的每个单位现在为4x。这是因为我们重新配置坐标系（你会看到这被称为“用户坐标系”，因为这是用户可以改变的）。

我们原始SVG中的每个1像素现在表示为4像素。这就是为什么现在的形象看起来像它的规模增长。什么*真正*发生的事情是我们调整用于绘制的坐标`rect`元素。

随着代码的改变，我们现在只看SVG的左上角。

让我们增加一点，所以我们只看到我们的SVG的蓝色的左上角。

```
<svg width="400" height="400" viewBox="0 0 40 40">
  <rect x="0" y="0" width="400" height="400" fill="#56a0d3" />
  <rect x="50" y="50" width="300" height="300" fill="#fff" />
  <rect x="100" y="100" width="200" height="200" fill="#56a0d3" />
  <rect x="150" y="150" width="100" height="100" fill="#fff" />
</svg>
```

这里我们将viewBox更改为0,0,40,40。坐标系仍然以0,0开始，但只能以40,40结束。由于协调系统已经再次移动，现在我们看到原始SVG图像的一小部分，我们的像素现在显示为10倍大小。我们原始SVG中的一个像素现在使用我们的新坐标系显示为10像素。原来的视口是400x400，viewBox改为40x40，是尺寸的十分之一。SVG然后显示40x40的图像 - 从0,0开始 - 然后将图像缩放到适合400x400视口。

最后，我们来更新viewBox开始的x，y坐标。

```
<svg class="fill" width="400" height="400" viewBox="100 100 400 400">
  <rect x="0" y="0" width="400" height="400" fill="#56a0d3" />
  <rect x="50" y="50" width="300" height="300" fill="#fff" />
  <rect x="100" y="100" width="200" height="200" fill="#56a0d3" />
  <rect x="150" y="150" width="100" height="100" fill="#fff" />
</svg>
```

对于这个例子，我们将viewBox更改为100,100,400,400。坐标系在x轴和y轴之间启动100，结束于400,400，这是我们绘制的图像的结尾。我们的视口仍然是400x400，但是由于我们已经到达了图像的右下角，所以我们的视口在botoom的右侧有额外的空间。通过向`fill`SVG元素添加一个类并设置背景颜色`#ccc`，我们可以看到我们的视口的其余部分（只是为了确认代码正常工作，我们期望！）。

对于`viewBox`属性的最后一个诀窍，让我们裁剪除了图像中间最小的正方形之外的所有内容。

```
<svg class="fill" width="400" height="400" viewBox="150 150 50 50">
  <rect x="0" y="0" width="400" height="400" fill="#56a0d3" />
  <rect x="50" y="50" width="300" height="300" fill="#fff" />
  <rect x="100" y="100" width="200" height="200" fill="#56a0d3" />
  <rect x="150" y="150" width="100" height="100" fill="#fff" />
</svg>
```

因为最小的正方形是白色的，所以我添加了一个边框到形状，所以我们可以看到它在那里。我们也可以改变形状的填充颜色以进行理智检查。

对于所有这些例子，我们原来的形象还在那里。使用`viewBox`属性，我们建立了一个新的网格，并改变了图像的呈现方式。

#### 进一步学习

为了更全面地了解SVG及其坐标系，我鼓励您看看Sara Soueidan的三篇文章系列。在系列中，Sara仔细观察SVG中的坐标系，并根据您的视图框和您正在使用的SVG图像的视口进行改变。

- [了解SVG坐标系统与转换（第1部分） -视口，`viewBox`，＆`preserveAspectRatio`](http://sarasoueidan.com/blog/svg-coordinate-systems/)
- [了解SVG坐标系和转换（第2部分） - `transform`属性](http://sarasoueidan.com/blog/svg-transformations/)
- [了解SVG坐标系和转换（第3部分） - 建立新的视口](http://sarasoueidan.com/blog/nesting-svgs/)



## 重要SVG要素

有一些SVG在我们的腰带，现在是时候了解更多关于我们可用的元素。我们不会覆盖他们（[有几十个](https://developer.mozilla.org/en-US/docs/Web/SVG/Element)），但是我想要查看在编码自己编写的生成的SVG或SVG时遇到的最重要的一些。

### `svg` 元件

我们在前面的例子中已经很熟悉了。它是SVG的主要元素，其中嵌套了您要绘制的任何形状，路径，线条等。

SVG元素定义SVG内容的视口或画布。

以下是一些具体属性`svg`：

- `height` - 视口的高度
- `preserveAspectRatio`- 强制使用宽高比使您的图像在使用`viewBox`元素定义新的坐标系时不被拉伸。
- `viewBox` - 允许您通过定义系统启动时的x，y坐标以及宽度和高度来设置新坐标系。
- `width` - 此SVG元素的视口宽度。

### `g` 元件

该元素用于创建SVG对象组。例如，如果您有一系列相关的矩形（`rect`），您可以将它们组合在一个`g`元素内。关于这一点的好处是，您应用于`g`组内所有内容的任何转换。

该`g`元素接受全球所有属性（如`stroke`，`fill`等）。

### `circle` 元件

这个元素完全符合它所说的名字：它创建了圆。

`circle` 接受三个元素特定的属性：

- `cx` - 该属性定义形状中心的x坐标。
- `cy` - 该属性定义形状中心的y坐标。
- `r` - 定义圆的半径。

### `rect` 元件

到目前为止，这是我们在所有例子中使用的元素。它创建矩形。

这些`rect`元素具有以下属性：

- `height` - 定义高度的形状。
- `width` - 定义形状的宽度。
- `x` - 形状应该开始绘制的x坐标。
- `y` - 形状应该开始绘制的y坐标。

### `line` 元件

该`line`元素允许您在SVG中绘制线条。每行通过设置x和y坐标来连接两个点。

以下是可用的属性`line`：

- `x1` - x轴上线的开始
- `y1` - 在y轴上的线的开始
- `x2` - x轴上的行尾
- `y2` - 在y轴上的行尾

### `path` 元件

`path`如果您使用现有的图稿并将其转换为SVG（例如在Adobe Illustrator中），您将看到该元素。Illustrator通过跟踪图像中的形状并将其转换为SVG `path`元素将图稿转换为SVG 。

可以使用`path`元素创建任何形状。它具有以下特定属性：

- `d` - 这是定义属性，它定义了要创建形状的路径。路径是使用“路径描述：”Moveto，Lineto，Curveto，Arcto，ClosePath定义的。
- `pathLength` - 使用此属性定义路径的总长度。

### `polygon` 元件

该`polygon`元素可以让你创建有很多面的任何形状。一个典型的例子是八边形。您可以使用`points`（此元素的唯一特定属性）绘制多边形的边。

### `text` 元件

使用`text`元素在SVG中设置文本。`text`使用全局`style`属性，您可以使用它来将样式（大小，字体，笔画等）应用于文本。

这里有一些属性：

- `textLength` - 文本长度的确切值。这用于非常具体的布局。
- `rotate` - 将确定文本旋转的数字列表。
- `x` - 文本开始的坐标
- `y` - 文本开始的坐标

### `textPath` 元件

该`textPath`元素允许您沿着`path`元素放置文本，并使文本跟随形状。这是一个经典的SVG演示元素，因为它可以使曲线上的文本。

要查看所有的SVG元素及其用法，请参考[关于SVG](https://developer.mozilla.org/en-US/docs/Web/SVG/Element)的[Mozilla文档](https://developer.mozilla.org/en-US/docs/Web/SVG/Element)。



## 将SVG添加到您的模板代码

好的，让我们开始向我们的代码添加SVG图像，以便您可以在我们的网页上使用它们。我们将开始非常简单，只需在HTML中使用标准图像标签即可使用SVG。然后我们将使用SVG作为背景图像。最后将在我们的网页中设置SVG作为对象。

您可以在自己喜欢的代码编辑器中执行此操作，或者，如果您愿意，您甚至可以在[CodePen](http://codepen.io/)上执行此[操作](http://codepen.io/)。CodePen可以很容易地看到我们的变化，并快速添加一些CSS甚至JavaScript，如果我们需要它。

### Plain Ol'SVG XML

```
<svg>
    <rect class="reverse" width="400" height="400"/>
</svg>
```

这是我们一直在做的，当我们添加SVG文件到我们的页面。这只是HTML文档中的SVG XML权限。没有什么花哨，没有什么困难。这也是浏览器从远程位置检索的一个资源，因为在HTML中渲染图像所需的一切都是正确的。很酷，对吧？

#### 优点

一个*巨大的*使用SVG这样的好处是，你可以通过DOM访问和使用CSS和JavaScript修改。将一个类添加到一个元素中，然后从CSS中进行相应的样式。

#### 缺点

一个主要缺点是该资产不可缓存，如使用其他方法（如`img`标记或背景图片）调用的SVG文件或位图图像。这似乎是一个小事情，但对于高流量网站，这可能是扩展和性能的一个大问题。

### SVG作为对象

使用该`object`元素是将SVG添加到HTML文档中的最灵活方式。您可以在`object`标签对内声明一个后备图像。不支持的网络浏览器将显示此后备图像（PNG，GIF或JPG）。

```
<object type="image/svg+xml"
    data="big-company-logo-without-text.svg">
        <img src="big-company-logo-without-text.png" />
</object>
```

#### 优点

- 完全访问 SVG 内部元素。这是什么意思？您仍然可以使用JavaScript和CSS操作SVG。
- 该`object`元素是可缓存的。

#### 缺点

- 按照原样实现，使用回退图像，即使不需要，客户端也将始终检索回退图像。稍后再详细看一下。

### 使用`img`标签

将SVG添加到网页的最简单的方法是使用标准图像标签调用图像，将SVG图像设置为源文件。

```
<img src="myimage.svg" alt="My File">
```

#### 优点

- 很容易做到并使用简单而经常使用的标记。
- 可以缓存文件以获得更好的性能。

#### 缺点

- 无法使用JavaScript或CSS操作SVG。对于不需要操纵的徽标或图标的图像，此选项是一个很好的选择。

### SVG作为背景图像

就像您可以使用任何其他图像，您可以指定一个SVG文件作为页面或元素的背景图像。

```
.logo { background: url(myimage.svg); }
```

#### 优点

- 更灵活地使用刚刚在页面中的SVG。
- 图像可以被缓存

#### 缺点

- 与使用该`img`元素时一样，您无法使用JavaScript对CSS进行操作。

## 用CSS样式化SVG

直到这一点，我们使用标准SVG属性（和一点点CSS）完成了我们的SVG操作。在本节中，我们将介绍如何使用CSS操作SVG。

使用CSS进行样式化SVG可以通过几种不同的方式完成：

- 使用`style`属性将样式规则附加到单个元素，
- 添加`class`属性，然后在外部或页内样式表中定义样式，以及
- 使用内嵌样式表，它们嵌套在`svg`元素中。

第一个可能是你最熟悉的。第三个使SVG自包含（样式都被捆绑在标记中），但如果您需要从外部CSS文件中覆盖或更新样式，则会成为维护噩梦。

对于我们的例子，我们将通过class属性来使用样式，这在外部样式表中被引用。

### 覆盖SVG属性

在我们的SVG示例中，我们已经使用SVG属性进行了任何样式更改`fill`。还有其他人一样`stroke`，`fill-opacity`和`stroke-width`对SVG形状元素。我们可以轻松地在CSS中覆盖这些。

假设我们想从早期的例子中创建我们的嵌套方形标志的单色版本。一种方法是`fill`用不同的颜色覆盖两个蓝色方块上的属性。

```
<svg class="logo" width="400" height="400" viewBox="0 0 400 400">
  <rect class="mono" x="0" y="0" width="400" height="400" fill="#56A0D3" />
  <rect x="50" y="50" width="300" height="300" fill="#ffffff" />
  <rect class="mono" x="100" y="100" width="200" height="200" fill="#56A0D3" />
  <rect x="150" y="150" width="100" height="100" fill="#fff" />
</svg>
```

和萨斯：

```
.logo {
  .mono {
    fill: #000;
  }
}
```

[查看SVG简介：示例10](http://codepen.io/mijingo/pen/c6336d77e142e440d8f6b8b23b6d1361)

我们还可以实现我们的方便`g`元素来将我们的`rect`元素组合在一起，然后通过应用于`g`元素的单个类覆盖它们，以将徽标转换为单色。

```
<svg width="400" height="400" viewBox="0 0 400 400">
  <g class="mono">
  <rect class="color" x="0" y="0" width="400" height="400" fill="#56A0D3" />
  <rect x="50" y="50" width="300" height="300" fill="#ffffff" />
  <rect class="color" x="100" y="100" width="200" height="200" fill="#56A0D3" />
  <rect x="150" y="150" width="100" height="100" fill="#fff" />
  </g>
</svg>
```

和萨斯：

```
.mono {
    .color {
      fill: #000;
    }
}
```

## 用JavaScript操作SVG

就像我们可以使用CSS做风格覆盖，我们也可以使用JavaScript来处理我们的SVG图像。使用JavaScript操作SVG与其他DOM元素没有任何区别。我们可以使用JavaScript，jQuery或任何我们想要的月份的其他风格。

这是一个非常简单的例子，用“inner” 来改变`fill`属性。`rect``id`

```
function blackOutCenter() {
 document.getElementById("inner").setAttribute("fill", "#333");
}
```

有线到一个按钮，[就像在工作示例中](http://codepen.io/mijingo/pen/07c4a4427273b62d206c7f2544a7f280)，这使用`setAttribute`方法来更新`fill`属性`#333`。

我们也可以阅读当前的属性，然后根据我们收回的内容作出决定。

```
function getFillColor() {
    svgRect = document.getElementById("inner");
    var fillColor = svgRect.getAttribute("fill");
}
```

[参见SVG简介：例13](http://codepen.io/mijingo/pen/8e29fe2eee038b4de2c9594552c45b58)

如果您熟悉使用JavaScript来影响DOM元素，这是基本的东西。

### 使用JavaScript库

还有可以使用的库，这使得创建和操作SVG变得非常简单。这里有一些您应该考虑的热门图书馆：

- [Snap.svg](http://snapsvg.io/)
- [SVG.js](https://svgdotjs.github.io/)
- [拉斐尔](http://raphaeljs.com/)
- [Velocity.js](http://julian.com/research/velocity/)
- [D3.js](http://d3js.org/)

## SVG浏览器支持

[SVG现在有广泛的支持](http://caniuse.com/#feat=svg)，它可以在任何现代的网络浏览器上正常工作。

啊，但是什么是现代网络浏览器？这是瘦的：

### 没有支持

- Internet Explorer 8或更早版本。
- Android 2.3或更早版本的浏览器。
- Chrome和Safari的早期版本。

### 部分支持

- Android 4
- Android 4.1
- Android 4.3

以下是我在上一章中分享的可以使用的图表：

![来自caniuse.com的SVG浏览器支持](http://svgtutorial.com/assets/chapters/svg-usage-report.png) *资料来源*：[可以使用](http://caniuse.com/#feat=svg)

因此，您将需要考虑备用选项。

### 使用Modernizr和SVG

您可以将旧版浏览器使用[Modernizer](http://modernizr.com/docs/)，以便您可以将其替换为图像文件而不是SVG。最简单的方法是使用Modernizr库。

一旦安装了Modernizr，就可以像这样检查你的JavaScript：

```
if(!Modernizr.svg) {

}
```

内部的检查（`if`声明），然后您可以交换SVG的后备图像（在这种情况下是一个PNG）。

```
if(!Modernizr.svg) {
     $('img[src*="svg"]').attr('src', function () {
     return $(this).attr('src').replace('.svg', '.png');
}
```

如果您使用SVG作为背景图像，则可以使用Modernizr提供的一些方便类，这些类将自动回退到非SVG资源。

### SVGeezy

[SVGeezy](http://benhowdle.im/svgeezy/)是另一种方式，如果浏览器不支持SVG，您可以自动启用SVG的后备。这是检测SVG图像的JavaScript插件，然后查找标准图像，例如PNG文件。SEG然后用标准图像替换SVG图像。最终结果与我们用JavaScript替代扩展的JavaScript示例完全相同。但是，由于CGD不需要现代化设备，因此不需要任何自定义JavaScript。

在您的网站上使用SVGeezy很简单，只需初始化代码并设置几个选项。或者，您可以设置一个不检查的类，然后告诉SVG很容易不检查具有不检查类的某些图像。

```
svgeezy.init('nocheck', 'png');
```

或者您可以将该选项设置为false和SVG，然后他将检查所有图像，然后用具有PNG文件扩展名的类似名称的图像替换它们。

```
svgeezy.init(false, 'png');
```

有关SVGeezy的更多信息，请查看他们的网站和可以下载代码的getup存储库。



## SVG和性能

### 更好的回退 `object`

以前我们`object`在文档中使用了包含SVG 的方法。对于不支持我们调用的SVG映像的浏览器，我们的回退技术是使用该`img`元素，只需调用映像版本的映像。当不支持SVG的浏览器遇到该`object`元素并看到一个SVG图像时，他们只会转到`img`标签对之间。

但是，当在受支持的浏览器中查看文档时，可以下载回退图像。这不太理想，因为我们的网页强制下载不需要的资产。这只是我们简单示例中的一个图像，但是在复杂的页面上，这可能是十几个额外的下载。这是完全不必要的！

为了解决这个问题，我建议你在元素中使用一个元素的背景图像`object`。这可能是一种`div`或某些语义上有意义的东西，就像一个`h1`。

这个想法来自于David Bushell的[A入门到Font-end SVG Hacking](http://dbushell.com/2013/02/04/a-primer-to-front-end-svg-hacking/)。他向[Clear Clear](http://clearleft.com/)的人们透露了这种技术的真实使用。检查页面上的徽标，并查看标记和CSS。他们的后背是一个`h1`包裹在`span`背景图像上`span`。

### 该`use`元素

`use`SVG中的元素可以帮助您在文档或网站的多个位置调用相同的SVG图像时不要重复。一个常见的例子是带有网站图像或用户界面图像的spritemap。

有两种方法来使用，啊哈，`use`：

- 具有已经在同一文档中使用的SVG的内部链接，或者
- 与其他地方使用的SVG的外部链接。

`use`具有外部链接的SVG 在浏览器支持方面受到限制（比SVG本身更受限制），因此您将需要使用处理Internet Explorer支持[的polyfill](https://github.com/jonathantneal/svg4everybody)。

以下是使用到内部SVG元素的链接的示例：

```
<svg height="400" width="400" viewBox="0 0 400 400">
  <defs>
    <rect id="sourceRec" x="0" y="0" height="400" width="400"/>
  </defs>
  <use xlink:href="#sourceRec" fill="#56A0D3" x="0" y="0" />
</svg>
```

在这个简单的例子中，我们在`defs`元素中定义一个矩形。此元素内的任何内容都不会呈现到屏幕上。它只是卷起来，用来生成新的形状。为此，我们使用该`use`元素来引用其中的形状，`defs`并使用它来绘制一个正方形。

因为我们没有`fill`为我们的原始形状（内部`defs`）设置颜色，所以我们可以定义当我们使用`use`它来生成它时。我们还设置了形状应该开始绘制的位置的x和y坐标。

### 使用CSS Sprites

您可以将多个SVG图像合并成一个SVG文件，然后将其用作精灵图像。这是与CSS和位图图像一起使用的常见技术，可以轻松应用于SVG。

### 只包含出现在图像中的矢量点

[这是一个很好的，可以忽略的，从本·弗兰特的提示](http://benfrain.com/tips-for-using-svgs-in-web-projects/)：

> 删除任何与视觉无关的向量点。例如，如果只有星星的尖端显示在别的东西之外，请删除所有在星形上不可见的向量点。较少的矢量点==较少的文件大小。这种事情真的可以保存多个SVG的KB。

### 使用SVGO优化SVG

[SVGO](https://github.com/svg/svgo)是一种基于Nodejs的SVG优化工具。它对SVG文件执行超过30种不同的优化，使其尽可能精简。

SVGO可作为独立的命令行实用程序提供，或作为[Grunt插件](https://github.com/sindresorhus/grunt-svgmin)和[Gulp插件](https://github.com/ben-eb/gulp-svgmin)打包。

此外，SVGO可以用作[OSX文件夹操作](https://github.com/svg/svgo-osx-folder-action)。文件夹操作是附加到文件夹的小脚本，用于处理添加到文件夹中的任何文件。安装“文件夹操作”后，您只需将要处理的文件放在文件夹中，并运行脚本即可优化SVG文件。

### 使用Grunticon

[Grunticon](https://github.com/filamentgroup/grunticon)是灯丝集团的“神秘CSS图标解决方案”。事实上，这是一个Grunt插件，用于处理SVG或PNG文件的文件夹，并以三种不同的格式输出：SVG数据URL，PNG数据URL和普通的PNG文件。Grunticon还可以检查支持的浏览器并提供合适的资产。



## 用Grunt优化SVG

在[SVG Performance](http://svgtutorial.com/svg-and-performance/)部分中，我提到了SVGO命令行实用程序，并且有一个Grunt插件可用。以下是如何使用Grunt插件来自动优化SVG图像，作为Web Devleopment工作流程的一部分。

调用SVGO实用程序作为Grunt插件`grunt-svgmin`。

### 安装 `grunt-svgmin`

在我们`Gruntfile.js`作为任务使用SVGO之前，我们需要先安装它。就像我们在[JavaScript Task Runners课程中一样](https://mijingo.com/products/screencasts/javascript-task-runners-grunt-gulp/)，我们需要运行`npm install`安装该插件。

```
npm install grunt-svgmin --save-dev
```

我们使用`--save-dev`这样插件将被保存在我们的`package.json`文件中，并设置为我们项目的依赖。

安装插件后，我们可以知道在`Gruntfile.js`文件中定义我们的任务。这就是它的样子：

```
svgmin: {
    options: {
        plugins: {
            removeViewBox: false
        }
    },
    dist: {
        files: {
            'images/svg/atom.svg' : 'src/svg/atom.svg'
        }
    }
}
```

此任务将被安置在`Gruntfile.js`文件的某个位置。

SVGO的这个Grunt实现使用与正常SVGO相同的插件。请参阅[SVGO插件](https://github.com/svg/svgo/tree/master/plugins)的[完整列表，](https://github.com/svg/svgo/tree/master/plugins)看看您可以在任务中做什么。默认情况下启用插件，因此您必须禁用任何您不想要的内容。如果您发现所产生的SVG在外观方面与原始文件相比太多变化，这将是必要的。在这个例子中，我们是禁用`removeViewBox`，这是SVGO可以为您做的优化。

我设置了一个目标，称为`dist`我定位特定图像的位置。目的地图像先到。它将保存在目录中`images/svg`。

我们不能忘记加载插件，所以让我们在`Gruntfile.js`文件的底部。

```
grunt.loadNpmTasks('grunt-svgmin');
```

好的，让我们来运行这个任务来看它的工作。

```
grunt svgmin
```

你应该得到类似的结果：

```
Running "svgmin:dist" (svgmin) task
✓ src/svg/atom.svg (saved 53 B 11%)
Total saved: 53 B

Done, without errors.
```

看着SVG我转换了，我剃了一点点图像（这是相当小的开始），但每个字节都计数！您将看到更大，更复杂的图像节省更多的成本。



## 附加工具和资源

我们涵盖使用Adobe Illustrator创建SVG文件，并使用在线工具Vector Magic进行转换。还有一些其他工具你也应该考虑：

- [素描](http://bohemiancoding.com/sketch/) - 现在流行的应用程序，因为它的价格点和在网页设计空间的适用性。制造商说它是“为现代平面设计师打造的”，并且很容易使用矢量工具“创造复杂的形状”。
- [SVG编辑](https://code.google.com/p/svg-edit/) - 一个基于JavaScript的SVG创建工具。这是所有基于浏览器的，它是非常有特色的。您可以自行下载并运行，也可以使用[演示版本](http://svg-edit.googlecode.com/svn/branches/stable/editor/svg-editor.html)。
- [Inkscape](http://inkscape.org/en/) - 一个开源的跨平台矢量图形工具。绝对值得一看，如果你想开始没有掏钱的工具。

### 参考书目

没有工作是完全原创的。以下是本课程研究材料时使用的资源。在SVG上有很多很好的阅读，可以利用你在本课程中学到的知识，并建立在它上面。



- [Using SVG - CSS Tricks](http://css-tricks.com/using-svg/)
- [An Optimized SVG Workflow - Kyle Foster](https://www.youtube.com/watch?v=iVzW3XuOm7E&feature=youtu.be)
- [You Don’t Know SVG - Dmitry Baranovskiy](https://www.youtube.com/watch?v=SeLOt_BRAqc)
- [Snap.svg](http://snapsvg.io/)
- [SVGO](https://github.com/svg/svgo) - a tool for optimizing SVG files.
- [SVG Support Table](http://caniuse.com/#feat=svg)
- [History of SVG](http://www.w3.org/Graphics/SVG/History)
- [SVG without Hacks](http://zurb.com/university/lessons/3)
- [Export SVG for the web with Illustrator CC](http://creativedroplets.com/export-svg-for-the-web-with-illustrator-cc/)
- [Vector Magic](http://vectormagic.com/home)
- [SVGeezy](http://benhowdle.im/svgeezy/)
- [A Primer to Front-end SVG Hacking](http://dbushell.com/2013/02/04/a-primer-to-front-end-svg-hacking/)
- [SVG Coordinate Systems](http://sarasoueidan.com/blog/svg-coordinate-systems/)
- [Interactive and Animated Scalable Vector Graphics and R Data Displays](http://www.omegahat.org/SVGAnnotation/SVGAnnotationPaper/SVGAnnotationPaper.html)
- [SVN Elements - Mozilla Foundation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element)
- [How to Add Scalable Vector Graphics to Your Web Page](http://www.sitepoint.com/add-svg-to-web-page/)
- [SVG Workflow for Designers](http://danielmall.com/articles/svg-workflow-for-designers/)
- [Animating with SVG](http://css-tricks.com/animating-svg-css/)
- [Simple Intro to SVG Animation](http://davidwalsh.name/svg-animation)
- [The Designer’s Guide to Working with SVG](http://www.sitepoint.com/designers-guide-working-with-svg/)
- [SVG Scripting](http://tutorials.jenkov.com/svg/scripting.html)
- [SVG is for Everybody](https://vimeo.com/99828116) - a talk by Chris Coyier
- [Structuring, Grouping, Referencing in SVG](http://sarasoueidan.com/blog/structuring-grouping-referencing-in-svg/)
- [Revisiting SVG workflow for performance and progressive development with transparent data URIs](http://toddmotto.com/revisiting-svg-workflow-for-performance-and-progressive-development-with-transparent-data-uris/)
- [filamentgroup/grunticon](https://github.com/filamentgroup/grunticon)
- [Unleash the power of SVG sprites - dev.webonomic.nl](http://dev.webonomic.nl/unleash-the-power-of-svg-sprites)
- [How to Use SVG Image Sprites](http://www.sitepoint.com/use-svg-image-sprites/)
- [gulp-svg-sprites](https://www.npmjs.org/package/gulp-svg-sprites)
- [grunt-svg-sprite](https://www.npmjs.org/package/grunt-svg-sprite)
- [Saggezza](http://www.saggezza.com/creating-an-svg-sprite/)
- [SVG Icon Sprites - An Optimized Workflow - JH](http://www.wearejh.com/design/svg-icon-sprites-optimized-workflow/)
- [Tips for using SVGs in web projects - Author and responsive web developer Ben Frain](http://benfrain.com/tips-for-using-svgs-in-web-projects/)
- [svg/svgo-osx-folder-action](https://github.com/svg/svgo-osx-folder-action)
- [SVG Editor](http://petercollingridge.appspot.com/svg-editor) - Online tool for SVG optimization
- [demosthenes.info – SVG Optimisation: The Basics](http://demosthenes.info/blog/807/SVG-Optimisation-The-Basics)
- [SVG Optimization - End-all, Be-all Edition](http://kylefoster.me/svg-slides/#/)
- [Kilobyte SVG Challenge by johan](http://johan.github.io/kilobyte-svg-challenge/)



## 结语和鸣谢

感谢您阅读（或扫描）*使用SVG开启和运行*。我把这个课程作为我在[Mijingo](https://mijingo.com/products/screencasts/svg-tutorial?utm_medium=textlink&utm_source=svgtutorial&utm_campaign=SVG%20Tutorial&utm_content=epilogue)正在进行的工作的一部分，为网页设计师和开发人员创造最好的培训产品。

如果您喜欢本课程，并希望支持我的工作，请[购买完整的视频课程](https://mijingo.com/products/screencasts/svg-tutorial?utm_medium=textlink&utm_source=svgtutorial&utm_campaign=SVG%20Tutorial&utm_content=epilogue)。这是100多分钟的培训，几十个代码示例和动手编码。

谢谢，

Ryan Irelan [mijingo.com](https://mijingo.com/?utm_medium=textlink&utm_source=svgtutorial&utm_campaign=SVG%20Tutorial&utm_content=epilogue)
