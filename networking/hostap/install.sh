#!/bin/bash

# args : src,dest
function copyAndBackupFile {

	if [ -f $2 ]; then 
		cp $2 ${2}.backup
	fi

	cp $1 $2

}

copyAndBackupFile dnsmasq.conf /etc/dnsmasq.conf
copyAndBackupFile hostapd /etc/default/hostapd
copyAndBackupFile hostapd.conf /etc/hostapd/hostapd.conf
copyAndBackupFile interfaces /etc/network/interfaces
