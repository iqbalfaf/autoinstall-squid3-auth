#!/bin/bash
## Auto Install Squid Proxy
## IqbalFAF

### IPKU
IPKU=$(wget -qO- ipv4.icanhazip.com);

### Warna
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

### Update Repo
apt-get update && apt-get upgrade -y


### Install Squid
apt-get install squid3 -y

## install apache utils
apt-get install apache2-utils -y
apt-get install wget -y


### Setting up squid3
wget -O /etc/squid3/squid.conf "https://raw.githubusercontent.com/iqbalfaf/autoinstall-squid3-auth/master/squid3-auth.conf"
touch /etc/squid3/squid_passwd
touch /etc/squid3/squid_user

### Download Script
wget -O /usr/bin/useradd-squid  "https://raw.githubusercontent.com/iqbalfaf/autoinstall-squid3-auth/master/useradd-squid.sh"
wget -O /usr/bin/userlist-squid "https://raw.githubusercontent.com/iqbalfaf/autoinstall-squid3-auth/master/userlist-squid.sh"
wget -O /usr/bin/ceklog-squid "https://raw.githubusercontent.com/iqbalfaf/autoinstall-squid3-auth/master/ceklog-squid.sh"
chmod +x /usr/bin/useradd-squid
chmod +x /usr/bin/userlist-squid
chmod +x /usr/bin/ceklog-squid

echo -e $blue"Script Telah Berhasil Di Pasang"
echo "IP VPS Nya : $IPKU"
echo "Port Squid : 1998, 3128"
echo "Untuk Membuat Akun Cukup Ketik :  useradd-squid"
echo "Untuk Mengecek Daftar Akun Squid Ketik : userlist-squid"
echo "Untuk Mengecek Log Squid Ketik : ceklog-squid"
echo "Terimakasih ./IqbalFAF"
echo "Jangan Lupa Kunjungi Blog Saya Untuk Mendapatkan Info Lain Nya"
echo "http://iqbalfaf.blogspot.com"
