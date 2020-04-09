#!/usr/bin/bash
#Create user Version 1.2
#Author by Wenxuan
#From The Chinese Chungking City,PRC,Asia
while true
do
#請輸入需要創建賬戶的數目
	read  -p "please input the number: "   number
	if [[ "$number" =~ ^[0-9]+$ ]]
		then
		break
	else
		echo "error,please retry"
		 
	fi
done

while true
do
#請輸入需要創建賬戶的前綴
read  -p   "please input the prefix: "   prefix
	if [ ! -z "$prefix" ]
		then
		break
	else
		echo "error,please retry"
		
	
	
	fi

done

#開始創建賬戶

for  i  in `seq $number`
do
	user=$prefix$i

	useradd  $user

	echo "123" |passwd --stdin  $user &>/dev/null

	if [ $? -eq 0 ]
	then
		#下次登陸强制修改密碼
		chage -d 0  $user
		echo "$user is created successfully"
		echo ""默認密碼:123!
		fi
done
