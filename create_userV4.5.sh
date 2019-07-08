#!/usr/bin/bash
#Author by wenxuan
#From the Uk
#Version 4.5
#E-mail:imwenxuan@gmail.com

while :
	do
	while :
	do
		read -p "please input the number: " number
		if [[ "$number" =~ [0-9]+$ ]]
		then
			break
		else
			echo "error ,please retry"
			read -p "please input the number: " number
		 fi
	done
	while :
		do
			read -p "please input the prefix: " prefix
		if [ ! -z "$prefix"  ]
			then
				break
			else 
				echo "error,please retry !"
				read -p "please input the prefix: "
		 fi
		done
	while  :
		do
			read -p "please input the password: " password
			if [ ! -z "$password"  ]
				then
					break
				else
					echo "error ,please input the password"			
			fi
		done
	printf "
		user's information
	###################################
		user prefix:$prefix
		user number:$number
		user password:$password
	###################################
		"
	read -p  "Are you sure?[y/n]: "  action
		if [ "$action" = "y" ]
			then
			break
		fi
done

echo  "creating users....please wait......"
for i in `seq $number`
	do
	user=$prefix$i
	
		useradd $user &>/dev/null


		echo "$password" |passwd --stdin $user
	
		if [ $? -eq 0 ]
			then
			echo "The $user is created successfully"

		fi

	done

