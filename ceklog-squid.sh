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
ceklog-squid=$(tail -f /var/log/squid3/access.log)

echo -e $yellow"=========== Membuat User Squid ==========="
echo -e $lightpurple"=========== Script By.IqbalFAF ==========="
echo -e $red"=========== http://iqbalfaf.blogspot.com ==========="
echo -e $green"$ceklog-squid"