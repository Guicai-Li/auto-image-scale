# auto-image-scale
### 功能描述
为了方便UI切图，自动将@6x倍图缩放为@1x @2x @3x倍图

### 如何使用？
1. 安装ImageMagick

	使用之前，首先做以下几件事情。
	
	Homebrew的安装 [Homebrew官网](http://brew.sh/index_zh-cn.html)
	
	通过Homebrew安装ImageMagic 
	
	<pre>
	sudo brew install ImageMagick</pre>

2. Clone 以及 修改权限
	<pre>
	git clone https://github.com/Guicai-Li/auto-image-scale.git
	cd ios-icon-generator
	chmod 777 autoImageScale.sh</pre>
3. 使用

	<pre>
	➜  auto-image-scale git:(master) ✗ ./autoImageScale.sh 
	avatar.png @1x is ok
	avatar.png @2x is ok
	avatar.png @3x is ok
	avatar.png 原图已删除</pre>


### History

* 1.0.0
	* 当前路径下直接将@6x图变成@1x @2x @3x图片


### Feature
1. 根据参数选择生成低倍图片

2. 根据参数选择生成路径

3. 类型转换格式
	
