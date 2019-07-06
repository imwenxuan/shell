#!/usr/bin/expect
#Title:Auto_login
#Author by Wenxuan From The London, UK!(作者:文萱)
#Version Auto_login 3.0 
#Date 2019-06-12
#使用set 設定變數。格式：set  變數名   變數值。【變數:中國大陸叫變量】
set ip  192.168.1.183
set username wenxuan
set password 190036
set timeout  5

#spawn 開啓一個遠端連綫的連接。格式 :spawn   協定     賬戶名@ip   -P 接口阜
spawn  ssh  $username@$ip

#expect 期望。    格式:expect   { "期望接收的字串"   {
#				send   "發送什麽指令\r"
#				send   "發送什麽指令\r"
#				......................
#}

expect {
	"yes/no"  {send "yes\r";exp_continue   }
	"password:" {send  "$password\r"};
	}

#expect 另一種表述:  期望出現什麽字串，發送何種指令，自動結束expect  eof
#即:
#expect   "期望字串"    
#send  "發送字串\r"	
#................
#expect eof

expect "#"  
send "touch  index.php\r"

expect eof




