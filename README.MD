#sassCore——也许是目前设计最好的sass库

目前sass库中应用最多的应该就是[compass](http://compass-style.org/)和[bourbon](http://bourbon.io/)，但是使用之后会发现compass设计太复杂了，而bourbon有点太简单了。于是只好琢磨着去搞一个使用起来更方便合理的sass库，经过翻阅众多资料、实践及思考，终于有了现在的sassCore。

##sassCore特点：

* sassCore涵盖范围广，目前涉及了setting，reset，mixin，css3，typography，media-queries，grids，helps八个基础部分及function和base这两个集成文件。
* sassCore采用开关机制，对是否支持ie6/7等众多条件可以通过设置为true或false来搞定。
* sassCore实用了sass 3.2.0版本的重大更新技术。如sass默认变量机制（默认变量!default，在应用的时候只需在你引入sassCore文件之前，重新申明变量就ok，而不需要去修改sassCore文件），placeholder选择器（有调用才会解析出相应的组合申明样式，避免了先前的class申明不管是否调用都会有样式解析出来）。
* sassCore借鉴优秀的作品，根据实战创造新的方法，紧跟前沿，每一个文件都是经过深思熟虑，几经更改的结晶。

##sassCore文件简略说明
###setting
负责变量的文件，如常用的颜色，字体等变量。

###reset
负责重置的文件。其实这个重置包括两个部分，第一部分是[normalize](http://necolas.github.io/normalize.css/)，第二部分是基于第一部分的一些重置，根据目前我们大家的使用习惯进行了一些归零行动，及设置文字字体及颜色，打印样式等。

###mixin
负责功能方面的文件。这里我们大概分成三个部分，一个是混合部分即mixin，一个是placeholder选择器部分即%，最后就是我们的function函数部分。我们常用的include及extend当然就是来自于这里了。

###grids
负责网格系统的文件。默认为流体布局，可以通过设置$_percentLayout为false来改成固定宽度（960px）居中布局，也可以通过设置$_span为true或false来控制是否输出各个网格的class。

###css3
负责css3属性前缀的文件。通过定义一个function，然后只需传递你的属性及需要的前缀就可以了，绝大部分来自[bourbon](http://bourbon.io/)。

###media-queries
负责响应式宽度判断的文件。主要是对响应式布局的一些宽度判断，来自paranoida的[sass-mediaqueries](https://github.com/paranoida/sass-mediaqueries)。

###typography
负责文字排版的文件。这里主要考虑到文章详细页和其他页面的一些不同情况而给详细页加入了article这个class，里面的一些元素如ul，li，p给予一定的样式，而不是清零。

###helps
常用的几个class，可以根据自己的喜好定义。