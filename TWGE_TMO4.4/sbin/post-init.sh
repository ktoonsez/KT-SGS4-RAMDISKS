#!/system/bin/sh

#Set Max Mhz for GPU
chmod 666 /sys/devices/platform/kgsl-3d0/kgsl/kgsl-3d0/pwrscale/trustzone/governor
chmod 666 /sys/class/kgsl/kgsl-3d0/max_gpuclk
echo 450000000 > /sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk

# make sure we own the device nodes
chown system /sys/devices/system/cpu/cpu0/cpufreq/*
chown system /sys/devices/system/cpu/cpu1/online
chown system /sys/devices/system/cpu/cpu2/online
chown system /sys/devices/system/cpu/cpu3/online
chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq
chmod 666 /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
chmod 666 /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
chmod 666 /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu1/cpufreq/cpuinfo_cur_freq
chmod 666 /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
chmod 666 /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
chmod 666 /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu2/cpufreq/cpuinfo_cur_freq
chmod 666 /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
chmod 666 /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
chmod 666 /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu3/cpufreq/cpuinfo_cur_freq
chmod 444 /sys/devices/system/cpu/cpu0/cpufreq/stats/*
chmod 666 /sys/devices/system/cpu/cpu1/online
chmod 666 /sys/devices/system/cpu/cpu2/online
chmod 666 /sys/devices/system/cpu/cpu3/online

#Set Max Mhz speed and booted flag to set Super Max
echo 1890000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq;
echo 1 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_booted;
echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor;
echo "ondemand" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor;
echo "ondemand" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor;
echo "ondemand" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor;

#Disable debug
echo "0" > /sys/module/kernel/parameters/initcall_debug;
echo "0" > /sys/module/earlysuspend/parameters/debug_mask;
echo "0" > /sys/module/alarm/parameters/debug_mask;
echo "0" > /sys/module/alarm_dev/parameters/debug_mask;
echo "0" > /sys/module/binder/parameters/debug_mask;
echo "0" > /sys/module/xt_qtaguid/parameters/debug_mask;
