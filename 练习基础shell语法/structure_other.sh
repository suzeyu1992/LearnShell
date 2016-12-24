#!/bin/bash

# ----------------for------------------------------
for normal_for_var in one two three four five six
do
	echo "遍历的值是: $normal_for_var !"
done

# for 从命令读取值并遍历
echo ------------------------------------------------------	
echo 从命令读取值并遍历

file_name=ColorTemplate.txt
for name in $(cat $file_name)
do
	echo 读取到的颜色: $name
done



# 更改环境变量IFS 内部字段分隔符  internal field separator
echo ------------------------------------------------------	
echo 更改环境变量IFS 内部字段分隔符  internal field separator

IFS=$'\n';:   # 这个赋值的含义包括换行， 分号， 冒号都可以作为字段的分隔符
for name in $(cat $file_name)
do
	echo 读取到的颜色: $name
done


# 使用通配符读取目录
echo -----------------------------------------------------
echo 使用通配符读取当前目录下的 .txt 文件

for txt in ./*.txt
do
	echo 读取到的txt文件为: $txt
done

# C语言风格的for命令
echo -----------------------------------------------------
echo C语言风格的for命令

for(( i=0; i<3; i++))
do
	echo c语言的for 变量i: $i
done


# while命令
echo -----------------------------------------------------
echo while命令

var_num_2=3
while [ $var_num_2 -gt 0 ]
do
	echo $var_num_2
	var_num_2=$[ $var_num_2 - 1 ]
done


# util命令 使用和while类似


# 循环处理文件
echo -----------------------------------------------------
echo 循环处理keymap文件


IFS=$'\n'
for entry in $(cat ./keymap.xml)
do
	
	IFS=:
	temp=1
	tempStr=""
	for value in $entry
	do
		if [ $temp -eq 1 ]; then
			tempStr="姓名="$value"年龄="
			temp=$[ $temp - 1] 
		else
			echo $tempStr $value
		fi
	done
	
	IFS=$'\n'

	
done




# 处理循环的输出
echo -----------------------------------------------------
echo 处理循环的输出

for(( a=1; a<100; a++))
do 
	echo 循环次数 $a
done > for_out.txt


for state in c b a
do
	echo $state
done | sort

























































