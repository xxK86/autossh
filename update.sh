#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
IZIN=$( curl http://147.139.194.54:81/aksesvpstoken | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Please Contact Admin"
echo "Telegram t.me/RPJ258"
echo "WhatsApp wa.me/085601438924"
rm -f setup.sh
exit 0
fi
mkdir /var/lib/premium-script;
echo "IP=" >> /var/lib/premium-script/ipvps.conf
#install ssh ovpn
wget http://147.139.194.54:81/sc/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
#install ssr
wget http://147.139.194.54:81/sc/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget http://147.139.194.54:81/sc/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
#installwg
wget http://147.139.194.54:81/sc/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
#install L2TP
wget http://147.139.194.54:81/sc/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
wget http://147.139.194.54:81/sc/set-br.sh && chmod +x set-br.sh && ./set-br.sh

rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/ipsec.sh
rm -f /root/set-br.sh
rm -f /usr/bin/menu
rm -f /usr/bin/usernew
rm -f /usr/bin/add-ws
rm -f /usr/bin/add-tr
rm -f /usr/bin/hapus

cd /usr/bin
wget -O add-host "http://147.139.194.54:81/sc/add-host.sh"
wget -O about "http://147.139.194.54:81/sc/about.sh"
wget -O menu "http://147.139.194.54:81/sc/menu.sh"
wget -O usernew "http://147.139.194.54:81/sc/usernew.sh"
wget -O trial "http://147.139.194.54:81/sc/trial.sh"
wget -O hapus "http://147.139.194.54:81/sc/hapus.sh"
wget -O member "http://147.139.194.54:81/sc/member.sh"
wget -O delete "http://147.139.194.54:81/sc/delete.sh"
wget -O cek "http://147.139.194.54:81/sc/cek.sh"
wget -O restart "http://147.139.194.54:81/sc/restart.sh"
wget -O speedtest "http://147.139.194.54:81/sc/speedtest_cli.py"
wget -O info "http://147.139.194.54:81/sc/info.sh"
wget -O ram "http://147.139.194.54:81/sc/ram.sh"
wget -O renew "http://147.139.194.54:81/sc/renew.sh"
wget -O autokill "http://147.139.194.54:81/sc/autokill.sh"
wget -O ceklim "http://147.139.194.54:81/sc/ceklim.sh"
wget -O tendang "http://147.139.194.54:81/sc/tendang.sh"
wget -O clear-log "http://147.139.194.54:81/sc/clear-log.sh"
wget -O change-port "http://147.139.194.54:81/sc/change.sh"
wget -O port-ovpn "http://147.139.194.54:81/sc/port-ovpn.sh"
wget -O port-ssl "http://147.139.194.54:81/sc/port-ssl.sh"
wget -O port-wg "http://147.139.194.54:81/sc/port-wg.sh"
wget -O port-tr "http://147.139.194.54:81/sc/port-tr.sh"
wget -O port-sstp "http://147.139.194.54:81/sc/port-sstp.sh"
wget -O port-squid "http://147.139.194.54:81/sc/port-squid.sh"
wget -O port-ws "http://147.139.194.54:81/sc/port-ws.sh"
wget -O port-vless "http://147.139.194.54:81/sc/port-vless.sh"
wget -O wbmn "http://147.139.194.54:81/sc/webmin.sh"
wget -O xp "http://147.139.194.54:81/sc/xp.sh"
wget -O update "http://147.139.194.54:81/sc/update.sh"
wget -O add-ws "http://147.139.194.54:81/sc/add-ws.sh"
wget -O add-vless "http://147.139.194.54:81/sc/add-vless.sh"
wget -O add-tr "http://147.139.194.54:81/sc/add-tr.sh"
wget -O del-ws "http://147.139.194.54:81/sc/del-ws.sh"
wget -O del-vless "http://147.139.194.54:81/sc/del-vless.sh"
wget -O del-tr "http://147.139.194.54:81/sc/del-tr.sh"
wget -O cek-ws "http://147.139.194.54:81/sc/cek-ws.sh"
wget -O cek-vless "http://147.139.194.54:81/sc/cek-vless.sh"
wget -O cek-tr "http://147.139.194.54:81/sc/cek-tr.sh"
wget -O renew-ws "http://147.139.194.54:81/sc/renew-ws.sh"
wget -O renew-vless "http://147.139.194.54:81/sc/renew-vless.sh"
wget -O renew-tr "http://147.139.194.54:81/sc/renew-tr.sh"
wget -O certv2ray "http://147.139.194.54:81/sc/cert.sh"
chmod +x add-ws
chmod +x add-vless
chmod +x add-tr
chmod +x del-ws
chmod +x del-vless
chmod +x del-tr
chmod +x cek-ws
chmod +x cek-vless
chmod +x cek-tr
chmod +x renew-ws
chmod +x renew-vless
chmod +x renew-tr
chmod +x certv2ray
chmod +x add-host
chmod +x menu
chmod +x usernew
chmod +x trial
chmod +x hapus
chmod +x member
chmod +x delete
chmod +x cek
chmod +x restart
chmod +x speedtest
chmod +x info
chmod +x about
chmod +x autokill
chmod +x tendang
chmod +x ceklim
chmod +x ram
chmod +x renew
chmod +x clear-log
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-sstp
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x wbmn
chmod +x xp
chmod +x update
clear
echo ""
echo "Installation has been completed!!"
echo " Reboot 15 Sec"
sleep 15
rm -f setup.sh
reboot
