#!/bin/bash
### IPKU
IPKU=$(wget -qO- ipv4.icanhazip.com);

### Variabel Warna
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

echo -e $yellow"=========== Membuat User Squid ==========="
echo -e $lightpurple"=========== Script By.IqbalFAF ==========="
echo -e $green"=========== http://iqbalfaf.blogspot.com ==========="
read -p "Nama User Squid : " USER 
read -p "Password Akun : " PASS 
echo "Isikan Lagi Password nya"
htpasswd /etc/squid3/squid_passwd $USER
echo -e green" Akun Berhasil Di Buat"
echo "IP VPS Nya : $IPKU"
echo "Port Squid : 1998, 3128"
echo " Nama Akun : $USER"
echo " Password Akun : $PASS"
echo "Terimakasih ./IqbalFAF"
echo "Jangan Lupa Kunjungi Blog Saya Untuk Mendapatkan Info Lain Nya"
echo "http://iqbalfaf.blogspot.com"
echo " $USER " >> /etc/squid3/squid_user
