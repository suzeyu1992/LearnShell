#!/bin/bash

# testing the if statement
if ls first.sh
then
	echo "exist file 'first.sh'"
	echo "if-then can multi line"

# 内部嵌套if的另一种写法
elif ls	
then
	echo "*************ok"

else
	echo "waring file not exist file -- 'first.sh'"

fi

# --------------test命令----------------
if test
then
	echo "test的 condition部分为真"
else
	echo "test的 condition部分为假"
fi

# --------------test命令----------------
testVar="non"
if test $testVar
then
	echo "test的 变量条件部分为真"
else
	echo "echo 变量条件部分为假"
fi

# --------------直接条件测试---------------- 
# if [ condition ]   替代test的方式。 condition距离左右括号需要保持一个空格
if [ 3 -eq 3 ]		# -eq (=) ; -ge (>=); -gt (>); -le (<=); -lt (<); -ne (!=)
then
	echo "直接条件为真"
else
	echo "直接条件为假"
fi

# 字符串的比较
# = (两串是否相同); != (是否不同); < (是否小于); > (是否大于); -n (检查参数后字符长度是否非0); -z (检查参数否的字符串长度是否为0); 
# 字符串的顺序比较时候 大小括号需要转义。 否则shell会认为其表达的语义为重定向

# 文件比较

test_file=./structure.sh
test_directory=./momo
if [ -f $test_file ]
then 
	echo "structure.sh文件存在"
else
	echo "structure.sh文件不存在"
fi

if [ -d $test_directory ]; then
	echo "momo文件夹存在"
	cd $test_directory
	ls
else
	echo "momo文件夹不存在"

fi



## 复合条件测试

if [ 3 -eq 3 ] && [ 4 -eq 4 ]
then 
	echo "复合条件为真"
else
	echo "复合条件为假"
fi



# if-then 高级特性
# 双括号 数学表达式


var_1=10
if (( $var_1 ** 2 > 90))
then 
	echo '平方大于90'
fi


# 双方括号 字符串可进行模式匹配 

str_1="suzeyu"
if [[ $str_1 == su* ]]
then 
	echo '字符串模式匹配 通过！'
fi


# CASE语句

case $str_1 in
suzeyu | suzey )
	echo 'case匹配结果为 suzeyu或者suzey';;
god )
	echo 'case 匹配结果为 god';;
* )
	echo 'case 匹配到条件';;
esac
















