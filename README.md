#sassCore——也许是目前设计最好的sass库

目前sass库中应用最多的应该就是[compass](http://compass-style.org/)和[bourbon](http://bourbon.io/)，但是使用之后会发现compass设计太复杂了，而且实际使用起来，导入文件还要考虑依赖关系，然后导入的一个文件中有用不着的代码；而bourbon有点太简单了，主要的就是css3的一些mixin。于是只好琢磨着去搞一个使用起来更方便合理的sass库，经过翻阅众多资料、实践及思考，终于有了现在的sassCore。

##sassCore特点：

* sassCore涵盖范围广，目前涉及了setting，css3，media-queries，mixin，grid，simple，normalize，reset，helps，typography，message，11个基础文件及function和base这两个集成文件。
* sassCore采用开关机制，让样式更可控。如对是否支持ie6/7等众多条件可以通过设置为true或false来搞定。
* sassCore采用了sass 3.2.0版本以后的重大更新技术，让开发者更加方便，同时解析的css文件更加优越。如sass默认变量机制（默认变量!default，在应用的时候只需在你引入sassCore文件之前，重新申明变量就ok，而不需要去修改sassCore文件），placeholder选择器（有调用才会解析出相应的组合申明样式，避免了先前的class申明不管是否调用都会有样式解析出来）等。
* sassCore借鉴优秀的作品，根据实战创造新的方法，紧跟前沿，每一个文件都是经过深思熟虑，几易其稿，在实用和卓越上狠下功夫。
* sassCore设计了两种调用方式，一种是只调用功能，不产生任何多余的css代码；另一种是包含了些重置样式及基本排版的样式。当然这所有的一切你都可以自己来控制调用，为团队的合作开发提供了良好的解决方案。

##sassCore文件简略说明
###setting
负责变量的文件，如常用的颜色，字体等变量。

###css3
负责css3属性前缀的文件。通过定义一个function，然后只需传递你的属性及需要的前缀就可以了，绝大部分来自[bourbon](http://bourbon.io/)。

###mixin
负责功能方面的文件。这里我们大概分成三个部分，一个是混合部分即mixin，一个是placeholder选择器部分即%，最后就是我们的function函数部分。我们常用的include及extend当然就是来自于这里了。

###media-queries
负责响应式宽度判断的文件。主要是对响应式布局的一些宽度判断，来自paranoida的[sass-mediaqueries](https://github.com/paranoida/sass-mediaqueries)。

###grid
负责网格系统的文件。默认为固定宽度布局（1000px），可以通过设置$gridPercentSwitch为true来切换为流体布局，也可以通过设置$gridSpan为true或false来控制是否输出各个网格的class。

###simple
主要用于对简单的btn，table，form的处理，在页面比较简单的情况下避免导入复杂的这几个组件。

###normalize
修正式的重置方式，从[normalize](http://necolas.github.io/normalize.css/)转成而来的[normalize.scss](https://github.com/kristerkari/normalize.scss/blob/master/_normalize.scss)

###reset
基于normalize的一些重置，根据目前我们大家的使用习惯进行了一些归零行动，及设置文字字体及颜色，是否输出打印样式等。

###helps
常用的几个class，可以根据自己的喜好定义。

###typography
负责文字排版的文件。这里主要考虑到文章详细页和其他页面的一些不同情况而给详细页加入了article这个class，里面的一些元素如ul，li，p给予一定的样式，而不是清零。

###message
交互提示信息，包括警告，错误，成功，提示四种状态的样式

###function
负责功能类的文件。这个文件导入了setting，css3，mixin，media-queries，grid，simple，默认不产生任何样式，除非使用了里面的功能。有一种情况除外：如果grid中开启了$gridSpan为true，那么会产生各个网格的class。

###base
base文件导入了上面所有的基础文件，解析出来的样式包括重置样式，文字排版样式及helps样式。

##使用说明

因为sass不能导入在线sass文件，而sassCore也没有提供安装版的使用，所以默认统一放在D盘进行调用，如导入base，`@import "D:/sassCore/base"`。

sassCore提供两种调用方式：一种直接导入base，它提供了一些基础的样式，包括重置，文字排版，一些有用的class及交互提示信息；一种是导入不产生任何额外样式的功能文件function。单人模式可直接调用base，团队多人多文件可由设计公用样式的人导入base，其余人员则导入function，以免重复申明样式。

##补充说明

* css3文件中绝大部分代码来自[bourbon](http://bourbon.io/)
* media-queries文件全部来自paranoida的[sass-mediaqueries](https://github.com/paranoida/sass-mediaqueries)
* normalize文件在[normalize.scss](https://github.com/kristerkari/normalize.scss/blob/master/_normalize.scss)的基础上删掉了一些标题样式等。

首先非常感谢他们，然后所有他们的代码版权归他们所有，sassCore只是将他们更好的结合在一起方便大家使用。