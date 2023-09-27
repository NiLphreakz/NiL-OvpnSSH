#!/bin/bash
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
clear
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text             \e[30m═[\e[$box SYSTEM MENU\e[30m ]═          \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[$below Backup Vps\e[m"
echo -e "   \e[$number (•2)\e[m \e[$below Autobackup Vps\e[m"
echo -e "   \e[$number (•3)\e[m \e[$below Restore Vps\e[m"
echo -e "   \e[$number (•4)\e[m \e[$below Setup Speed VPS\e[m"
echo -e "   \e[$number (•5)\e[m \e[$below Restart VPN\e[m"
echo -e "   \e[$number (•6)\e[m\e[$below Speedtest VPS\e[m"
echo -e "   \e[$number (•7)\e[m\e[$below ON/OF Auto Reboot\e[m"
echo -e "   \e[$number (•8)\e[m\e[$below Change Password VPS\e[m"
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x)   MENU                             \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -p "        Please Input Number  [1-14 or x] :  "  sys
echo -e ""
case $sys in
1)
backup
;;
2)
autobackup
;;
3)
restore
;;
4)
limit-speed
;;
5)
restart
;;
6)
speedtest
;;
7)
autoreboot
;;
8)
passwd
;;
x)
menu
;;
*)
echo "Please enter an correct number"
sleep 1
system
;;
esac
