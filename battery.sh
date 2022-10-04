#!/bin/bash
battery_info=`ioreg -rc AppleSmartBattery`
current_charge=$(echo $battery_info | grep -o '"CurrentCapacity" = [0-9]\+' | awk '{print $3}')
total_charge=$(echo $battery_info | grep -o '"MaxCapacity" = [0-9]\+' | awk '{print $3}')

percent_remaining=$(((current_charge/total_charge)*100))
echo battery: $percent_remaining%
