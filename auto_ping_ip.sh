#!/usr/bin/bash
#Author by Wenxuan
#From The London City,The United Kingdom
#判斷是否加參數($#獲取參數個數)
#$0表示脚本程式名稱
if test $# -eq 0 
then
echo "尚未在`basename $0` file 加參數"

exit

fi

#判斷是否是文件
if test ! -f $1 
then 
	echo "is not  file"
	exit
fi

for  ip in `cat $1`

do
	ping -c4 -w4 $ip &>/dev/null

	if test $? -eq 0
	then
		echo "$ip is up"
	else 
		echo "$ip is down"
	fi


done
