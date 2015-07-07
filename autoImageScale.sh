#!/bin/sh  
  
#将@6倍图自动缩放为@1x @2x @3x倍图
path="ProcessedImages"
if [[ ! -x "$path" ]]; then
	mkdir "$path"
fi

Default() {
	echo 默认将当前的所有图片生成@1x @2x @3x倍图
	for img in `ls *.png`  
	do  
	name1x=$path/${img%@*}.png  
	name2x=$path/${img%@*}@2x.png  
	name3x=$path/${img%@*}@3x.png
	WIDTH=`identify ${img} | cut -f 3 -d " " | sed s/x.*//` #width
	HEIGHT=`identify ${img} | cut -f 3 -d " " | sed s/.*x//` #height

	#计算出1x倍图的大小
	dw=`echo "${WIDTH}/6" |bc`
	dh=`echo "${HEIGHT}/6" |bc`
	convert -resize $dwx$dh ${img} ${name1x}
	echo $img @1x is ok 
	#计算出2x倍图的大小
	dw=`echo "${WIDTH}/3" |bc`
	dh=`echo "${HEIGHT}/3" |bc`
	convert -resize $dwx$dh ${img} ${name2x}
	echo $img @2x is ok 
	#计算出3x倍图的大小
	dw=`echo "${WIDTH}/2" |bc`
	dh=`echo "${HEIGHT}/2" |bc`
	convert -resize $dwx$dh ${img} ${name3x}
	echo $img @3x is ok 
	rm $img
	echo $img 原图已删除
	done
}

if [ $# != 2 ];then
    Default
    exit -1
fi



