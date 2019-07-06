#!/bin/bash
#author by wenxuan
#From The London City ,The United kingdom!
#Version 3.5  2019-06-19  
echo -e "\e[1;31m Welcome to using wenxuan's system box! enjoy yourself\e[0m"
echo -e "\e[1;34m Author by Wenxuan.\e[0m"
echo -e  "\e[1;35m following me:imwenxuan@gmail.com . From The London City ,The United Kingdom.\e[0m"
function menu() {
cat<<-EOF
############################
#	1)for help
#	2)show free memory
#	3)show free disk
#	4)show system load
#	5)quit
###########################
EOF
}
	menu
#循環1開始.台灣叫回圈
while true
	do
		read -p "please input: "  active
			#循環2開始.台灣叫回圈
			while true
			do
				if [[ "$active" =~ ^[0-9]+$ ]]
					then
						break
				else
					echo "error ,you must input number"
					read -p "please input: " active
		fi
			#循環2結束	
			done
		case $active in
			1)
				clear
				echo -e "\e[1;31m Welcome to using wenxuan's system box! enjoy yourself\e[0m"
				menu
			;;
			2)
				free -th
			;;

			3)
				df -Th
			;;
			4)
				uptime
			;;	
			5)
				echo -e "\e[1;32m Thanks for your using,bye!\e[0m"
				break
			;;
	esac
#循環1結束
done

		#編號1的while  :  do done循環是爲了循環菜單的。即每選擇一個選項執行后二不直接退出，而是繼續讓用戶選擇執行。
		#編號2的while : do done 循環是爲了驗證用戶輸入選項是否爲數字

