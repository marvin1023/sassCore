#sassCore 3.0——Just for Better

sassCore参考了[compass](http://compass-style.org/)和[bourbon](http://bourbon.io/)等众多优秀的sass库，根据项目实践，归纳总结而成，一直以来为了更好而不断完善。

sassCore提供了一些基础和常用的东西，基于它你可以扩展出很多组件等，如果你对这个有兴趣，可以参考下基于sassCore的[tobe](http://tobe.w3cplus.com)。

##如何使用？


sassCore分核心文件和扩展文件两种。其中核心文件提供一些基础的样式和`@mixin`，`%`等方便调用；而扩展文件则提供一些模块的样式，如`form`，`table`等。

详细使用文档请移步：[w3cplus sassCore](http://w3cplus.com/sasscore/index.html)

###核心文件调用
第一种除提供基础功能外，会产生一份reset样式：

	@import "d:/sassCore/base";

第二种不产生任何样式，只提供功能的调用：

	@import "d:/sassCore/function";

###扩展文件调用

根据需要调用，以table为例：

	@import "d:/sassCore/ext/table";

注：因为sass不能导入在线sass文件，而sassCore也没有提供安装版的使用，所以默认统一放在D盘进行调用。

##五大特点：

* sassCore涵盖范围广。核心文件有setting，css3，media-queries，mixin，grid，reset；扩展文件有animate，font-face，btn，message，form，table，helps，typography；除此之外还有两个集合文件function和base。
* sassCore对兼容采用了开关控制机制。如对是否支持ie6/7可以通过设置为true或false以生成对应的代码。
* sassCore严格控制样式冗余累赘。使用开关变量做到需要什么样式就加载什么样式，按需开启，避免样式冗余累赘。
* sassCore设计了两种调用方式，一种是只调用功能，不产生任何多余的css代码；另一种是包含了些重置样式。为团队的合作开发提供了良好的解决方案。
* sassCore借鉴优秀的作品，根据实战创造新的方法，紧跟前沿，每一个文件都是经过深思熟虑，几易其稿，在实用和卓越上狠下功夫。

##文件简述

sassCore包括两个集合文件（base，function）和两个文件夹（core，ext）。其中core文件夹中为核心基础文件，包括setting，css3，media-queries，mixin，grid，reset；而ext文件夹中是一些扩展文件，包括animate，font-face，btn，message，form，table，typography，helper。

两个集合文件（base，function）导入的都是core中的文件，区别在于base除了提供基本功能之外还会生成一份reset样式，而function则只提供基本功能。至于ext中的文件则属于额外的一些模块扩展，可根据需求导入。

###core文件

####setting
负责基础变量的文件，如常用的颜色，字体等变量。

####css3
负责css3属性前缀的文件。参考了[bourbon](http://bourbon.io/)，然后进行一系列的扩展及优化，以使解析出来的代码更加合理。

####media-queries
负责响应式宽度判断的文件。主要是对响应式布局的一些宽度判断，来自paranoida的[sass-mediaqueries](https://github.com/paranoida/sass-mediaqueries)。

####mixin
负责功能方面的文件。这里我们大概分成三个部分，一个是混合部分即mixin，一个是placeholder选择器部分即%，最后就是我们的function函数部分。我们常用的include及extend当然就是来自于这里了。

####grid
负责网格系统的文件。默认为固定宽度布局（1000px），可以通过设置$gridPercentSwitch为true来切换为流体布局，也可以通过设置$gridSpanSwitch为true或false来控制是否输出各个网格的class。

###reset
在[normalize](http://necolas.github.io/normalize.css/)的基础上，根据目前我们大家的使用习惯进行了一些归零行动，及设置文字字体颜色，是否输出打印样式。

###ext文件

####animate
将[animate.css](http://daneden.github.io/animate.css/)转成scss版本，默认不输出任何样式，需要什么动画先导入对应的动画文件，然后include调用即可。

####font-face
来自[Font Awesome](http://fontawesome.io/)的字体图标，可以根据自己的需求使用其他字体图标，默认不输出任何class，可根据实际需求输出其中的某些icon。参考了大漠的[font-awesome](https://github.com/airen/w3cplusSass/tree/master/lib/module/font-awesome)模块

####btn
为按钮设计的文件，里面定义了一系列mixin，可用于自定义按钮，默认生成两种按钮

####message
交互提示信息，包括警告，错误，成功，提示四种状态的样式

####form
提供了表单元素样式及几种常见的表单组合样式，可通过变量控制输出

####table
提供几种常用的表格样式，可通过变量来控制输出

####helper
常用的几个class，可以根据自己的喜好定义。

####typography
负责文字排版的文件。这里主要考虑到文章详细页和其他页面的一些不同情况而给详细页加入了article这个class，里面的一些元素如ul，li，p给予一定的样式，而不是清零。
