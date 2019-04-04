#!/bin/bash
#Uskerim
full_msg="Battery Full, Unplug the charger" 
low_msg="Battery Low, Plug in the charger" 
charge=$(acpi  | awk '{print $4}' | sed 's/%,//g')
stat=$(acpi | awk '{print $3}' | sed 's/,//g')
function notify(){
	msg=${1}
	for i in `ls /dev/pts/` ; do 
		echo "${msg}" >> "/dev/pts/${i}" 
	done;
}
if [ "${charge}" -ge "90" ] && [ "${stat}" == "Charging" ] ; then 
	notify "${full_msg}"
fi
if [ "${charge}" -le "10" ] && [ "${stat}" == "Discharging" ] ; then 
	notify "${low_msg}"
fi
