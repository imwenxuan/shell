#!/bin/bash
#Author by Wenxuan
#Version 1.2 
#timedate 2019-06-12
###start function##########
echo "---------------Tianyun Tools--------------------------"
echo "---------------Author By Wenxuan----------------------"
echo "---------------From The Chinese Chungking-------------"
echo "---------------Enjoy Yourself-------------------------"
function menu() {
cat<<-EOF
######################################
#    h.help                          #
#    m.show free memory		     #
#    u.show system load	             #
#    d.show free disk
#    q.quit		     #
######################################
EOF
}
####end function############
###call function###########
menu

while :
do
	read -p "please input:"  active

	if test -z "$active"
	then
		echo "sorry,you must input it!"
		exit
	fi

	
	case $active in
		h)
			clear
			menu
		;;
	        m)
			free -h
		;;
		u)
			uptime
		;;
		d)
			df -Th
		;;
		q)
			echo "Thanks for your using!Bye."
			break
		;;

	esac

done
