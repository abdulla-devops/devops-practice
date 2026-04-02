#!/bin/bash

#===================================
#server health Moniter
#Built By Abdulla
#===================================

LOG_FILE="moniter.log"
DATE=$(date)

echo "================================" | tee -a $LOG_FILE
echo "Server Moniter Started" | tee -a $LOG_FILE
echo "Date: $DATE" | tee -a $LOG_FILE
echo "================================" | tee -a $LOG_FILE


#Check Disk Space
DISK=$(df -h / | grep / | awk '{print $5}' | tr -d '%')
echo "Disk Usage: $DISK%" | tee -a $LOG_FILE

if [ $DISK -gt 80 ]
then
      echo "WARNING!!!!: Disk space is critical" | tee -a $LOG_FILE
else
      echo "Disk sapce is Normal" | tee -a $LOG_FILE
fi

# Check Memory
Memory=$(free | grep Mem | awk '{printf "%d", ($3/$2)*100.0}')
echo "Memory Usage: $Memory%" | tee -a $LOG_FILE

if [ "$Memory" -gt 80 ]
then
	echo "!WARNING: Memory Usage is Critical!" | tee -a $LOG_FILE
else
	echo "MEMORY is NORMAL" | tee -a $LOG_FILE
fi
echo "Moniter Complete!" | tee -a $LOG_FILE
echo "==================================" | tee -a $LOG_FILE

