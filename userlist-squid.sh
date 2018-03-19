#!/bin/bash
### IPKU
IPKU=$(wget -qO- ipv4.icanhazip.com);

### Cek User nya
USER=$(cat /etc/squid3/squid_user)

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

echo -e $yellow"=========== Daftar Akun Squid ==========="
echo -e $lightpurple"=========== Script By.IqbalFAF ==========="
echo -e $red"=========== http://iqbalfaf.blogspot.com ==========="
echo -e $green "$USER"
echo "Terimakasih ./IqbalFAF"
echo "Jangan Lupa Kunjungi Blog Saya Untuk Mendapatkan Info Lain Nya"
echo "http://iqbalfaf.blogspot.com"