#!/bin/bash
. ~/.profile

# args : src,dest
function copyAndBackupFile {

	if [ -f $2 ]; then 
		cp $2 ${2}.backup
	fi

	cat $1 | envsubst > $2
}

copyAndBackupFile wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf
copyAndBackupFile interfaces.net /etc/network/interfaces
