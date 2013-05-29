#!/system/bin/sh

#Set governor items
echo 1890000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq;
echo 1 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_booted;
echo 1 > /sys/devices/system/cpu/cpufreq/ktoonsez/enable_oc;

echo $(date) END of post-init.sh
