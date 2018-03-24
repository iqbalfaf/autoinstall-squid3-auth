#!/bin/bash

###  Warna
black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;34m'
cyan='\e[0;36m'
red='\e[1;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
lightgreen='\e[1;34m'
lightblue='\e[1;34m'
lightcyan='\e[1;36m'
lightred='\e[1;31m'
lightpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'

###
#####

echo -e $yellow"=========== Cek Log Squid ==========="
echo -e $lightpurple"=========== Script By.IqbalFAF ==========="
echo -e $red"=========== http://iqbalfaf.blogspot.com ==========="
echo -e $white" [$lightgreen"1"$white]$blue Cek Dengan Nama USer"
echo -e $white" [$lightgreen"2"$white]$green Cek Semua User"
echo -e $white" [$lightgreen"x"$white]$green keluar"
echo -e $green" ┌─["$red"IqbalFAF$lightgreen]──[$red~$lightgreen]─["$yellow"menu$lighgreen]:"	
echo -ne $green" └─────► " ;tput sgr0
read iqbalfaf
case $iqbalfaf in
	1)
	clear
	 read -p "Silahkan Masukan Nama User : " user
	 tail -f /var/log/squid3/access.log | grep $user 
 	;;
 	2)
	clear
	echo -e $lightgreen " Cek Log Squid Semua User"
	tail -f /var/log/squid3/access.log
	;;
	x)
	read -p "Tekan ENTER untuk keluar..."
	clear
	exit
	;;
esac
done
