#!/bin/bash
VM_ON_GOVERNOR=performance
VM_OFF_GOVERNOR=schedutil
CPU_COUNT=0

for file in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
do
	echo $VM_ON_GOVERNOR > $file;
	echo "CPU $CPU_COUNT governor: $VM_ON_GOVERNOR";
	let CPU_COUNT+=1
done
