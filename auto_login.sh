#!/usr/bin/expect
#Title:Auto_login
#Author by Wenxuan From The London, UK!
#Version Auto_login 3.0 
#Date 2019-06-12

set ip  192.168.1.183
set username wenxuan
set password 190036
set timeout  5

spawn  ssh  $username@$ip
expect {
	"yes/no"  {send "yes\r";exp_continue   }
	"password:" {send  "$password\r"};
	}

expect "#"  
send "touch  index.php\r"

expect eof




