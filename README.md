# BatteryLow
This is a notifier for Linux users who like non graphical terminals more than GUI and have issues with their batteries. I always have this issue that when I'm in the terminal, I'll never know when should I plug in my charger. So, I wrote this script to notify me of that. 

# Requirements
Please install `acpi` in advance. 

# How it works?
I'll add a cron job to your cron job lists. It'll get the output of the `acpi` every minute and if the battery is more than 90% charged or if the remaining battery is less than 10%, it will notify you to plug in or unplug the charger. 
