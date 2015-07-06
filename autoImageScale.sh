#!/bin/sh  
rm -rf 1x  
rm -rf 2x 
rm -rf 3x 
mkdir 1x  
mkdir 2x 
mkdir 3x 
  
for img in `ls *.png`  
do  
name1x=1x/${img%@*}.png  
name2x=2x/${img%@*}@2x.png  
name3x=3x/${img%@*}@3x.png
echo ${name1x}
convert -resize 50%x50% ${img} ${name1x}
echo ${name2x}  
cp ${img} ${name2x}  
echo ${name3x}
convert -resize 150%x150% ${img} ${name3x}
done