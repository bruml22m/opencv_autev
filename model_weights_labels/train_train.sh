#!/bin/bash -e

cd /home/dmb/nn/autev/train

# Warning: this file is automatically created/updated by DarkMark v1.8.28-1!
# Created on Wed 2024-08-28 15:18:34 PDT by dmb@DESKTOP-4AH6M99.

rm -f output.log
#rm -f chart.png

echo "creating new log file" > output.log
date >> output.log

ts1=$(date)
ts2=$(date +%s)
echo "initial ts1: ${ts1}" >> output.log
echo "initial ts2: ${ts2}" >> output.log
echo "cmd: /usr/bin/darknet detector -map -dont_show train /home/dmb/nn/autev/train/train.data /home/dmb/nn/autev/train/train.cfg" >> output.log

/usr/bin/time --verbose /usr/bin/darknet detector -map -dont_show train /home/dmb/nn/autev/train/train.data /home/dmb/nn/autev/train/train.cfg 2>&1 | tee --append output.log

ts3=$(date)
ts4=$(date +%s)
echo "ts1: ${ts1}" >> output.log
echo "ts2: ${ts2}" >> output.log
echo "ts3: ${ts3}" >> output.log
echo "ts4: ${ts4}" >> output.log

