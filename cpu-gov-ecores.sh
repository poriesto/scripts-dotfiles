#!/bin/bash
VM_ON_GOVERNOR=performance
VM_OFF_GOVERNOR=schedutil
CPU_COUNT=0

#for file in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
#/sys/devices/system/cpu/cpu[1][2-9]/cpufreq/scaling_governor

for file in /sys/devices/system/cpu/cpu[1][2-9]/cpufreq/scaling_governor
do
	echo $VM_OFF_GOVERNOR > $file;
  cat $file
done

for file in /sys/devices/system/cpu/cpu[0-9]/cpufreq/scaling_governor
do
	echo $VM_ON_GOVERNOR > $file;
  cat $file
done

for file in /sys/devices/system/cpu/cpu[1][0-1]/cpufreq/scaling_governor
do
	echo $VM_ON_GOVERNOR > $file;
  cat $file
done

