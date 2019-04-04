# BatteryLow
This is a notifier for Linux users who like non graphical terminals more than GUI and have issues with their batteries. I always have this issue that when I'm in the terminal, I'll never know when should I plug in my charger. So, I wrote this script to notify me of that. 

# Installation
This installation is only for ubuntu/debian users, but by installing the `acpi` other distributions should be able to install this as well. 
To install `acpi`, use: 
```bash
sudo apt-get install acpi 
```
Then run the `confing.sh` file to install the script. But before running the config file, please move all the scripts in the folder where you have already decided to keep the scripts forever, I'm assuming you will not move the files to somewhere else. 
```bash 
sudo source config.sh
```

# How it works?
I'll add a cron job to your cron job lists. It'll get the output of the `acpi` every minute and if the battery is more than 90% charged or if the remaining battery is less than 10%, it will notify you to plug in or unplug the charger. 

