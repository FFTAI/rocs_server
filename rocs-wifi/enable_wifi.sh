#!/bin/bash

echo '# create ap'
source wifi.conf

wifi_id=$SSID
wifi_pw=$PASSWORD

wlan_interface=$(nmcli device | awk '/wifi/ {print $1; exit}')
eth_interface=$(nmcli device | awk '/ethernet/ {print $1; exit}')
wifi_status=$(nmcli radio wifi)

if [ -z $wifi_id ]; then
  wifi_id=$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1; exit}' /etc/passwd)
  echo "wifi_id is null ! use default: $wifi_id"
fi

if [ -z $wifi_pw ]; then
  wifi_pw=66668888
  echo "wifi_pw is null ! use default: $wifi_pw"
fi

if [ -z $eth_interface ]; then
  eth_interface=lo
fi

# Turn on wifi
if [ $wifi_status != 'enabled' ]; then
  nmcli radio wifi on
fi

# Disconnect wifi
if nmcli con show --active | grep -q "wifi"; then
  nmcli device disconnect $wlan_interface
fi

echo "--------------------WIFI ---------------------"
echo "# wlan_interface: $wlan_interface"
echo "#  eth_interface: $eth_interface"
echo "#      wifi_ssid: $wifi_id"
echo "#      wifi_pass: $wifi_pw"

create_ap --stop $wlan_interface
create_ap $wlan_interface $eth_interface $wifi_id $wifi_pw