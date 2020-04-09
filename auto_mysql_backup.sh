#!/usr/bin/bash
#Title Mysql Backup
#Author by the UNSG(聯合國秘書長[台灣])
#From The Chinese Taipei
#Version 3.0
#Date 2020/4/8 16:47
#設定當前時間
	now=`date +"%Y-%m-%d_%H-%M-%S"`
#設定七天以前的時間
	old=`date -d "-7 days" +"%Y-%m-%d_%H-%M-%S"`
#設定備份路徑
	path=/back
#設定資料庫賬戶訊息
	user='root'
	pass='2ayijq8888'
	db='demo'
#判定備份資料庫的資料夾是否存在喔
	if [  !  -d  $path  ]
	then
		mkdir $path
		echo "created successfully"
	fi
#切換至指定備份路徑喔
	cd $path
#開始備份並打包以日期命名喔
	/usr/bin/mysqldump  -u $user -p$pass -B $db -E -F -R --triggers --single-transaction  --master-data=1 --flush-privileges  |gzip >$path/$now.demo.sql.gz
#判定是否成功備份資料庫
	if [ $? -eq 0  ] 
	then
		echo "backup successfully"
	else
		echo "error,please retry"
	fi
#回收七天以前的舊資料庫
	if [  -f $path/$old.demo.sql.gz  ]
	then
		rm  -rf $path/$old.demo.sql.gz
		echo "delete the old files successfully"
	fi


