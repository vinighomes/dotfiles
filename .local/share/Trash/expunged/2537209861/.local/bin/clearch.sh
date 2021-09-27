#!/bin/zsh
# Note, we are using "echo 3", but it is not recommended in production instead use "echo 1"
su -c "echo 1 >'/proc/sys/vm/drop_caches'&& echo 2 >'/proc/sys/vm/drop_caches' && echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a && print '***Caches limpos com sucesso!***'" root
