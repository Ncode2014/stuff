#!/bin/bash
#version 1.0

clear
# Variables
b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'
blue='\e[1;34m'
cyan='\e[1;36m'
red='\e[1;39m'

echo "==============================================="
echo -e "Welcome to My Tools To \e[1m Maker torrent list"
echo -e "created by narima aka Nzteam" 
sleep 1
echo " ==============================================="
echo " PILIH FITUR YANG DISEDIAKAN"
echo " ================================================"
echo -e $b "1.\e[39m Upload Dual To Github${enda}"
echo -e $b  "2.Grab Tracker List (For Dual)${enda}"
echo -e $b  "3.Bersih - Bersih${enda}"
echo -e $b  "4.Cek Github kondisi${enda}"
echo -e $b  "5.Cek Github log${enda}"
echo -e $b  "6.Cek perbedaan${enda}"
echo -e $b  "7.Wajib Install"
echo "ketik no 7 buat exit ini tools"
echo "================================================="
echo -n "Masukan Menu Tools Nya Gan Pilih [1-6] : " 
read Pilih

if [ $Pilih -eq "1" ];then
echo "================================================="
cd Output && sh upload_dual.sh
echo "================================================="
echo "";
fi

if [ $Pilih -eq "2" ];then
echo "================================================="
bash maker.sh
sleep 15
python trscrapper.py
echo "================================================="
echo "";
fi

if [ $Pilih -eq "3" ];then
echo "================================================="
rm -f *.sh.bak
rm -f *.txt.1
rm -f *.txt
echo "================================================="
echo "";
fi

if [ $Pilih -eq "4" ];then
echo "================================================="
git status
echo "================================================="
echo "";
fi

if [ $Pilih -eq "5" ];then
echo "================================================="
git log
echo "================================================="
echo "";
fi

if [ $Pilih -eq "6" ];then
echo "================================================="
cd Output && cp *.txt ../
git diff
echo "================================================="
echo "";
fi

if [ $Pilih -eq "7" ];then
echo "installer tool"
apt install python -y
pip install -r requirements.txt
echo "done"
echo "";
fi
