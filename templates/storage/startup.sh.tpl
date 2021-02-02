#!/bin/bash
# logging
LOG_FILE="/status.log"
if [ ! -e $LOG_FILE ]
then
     touch $LOG_FILE
     exec &>>$LOG_FILE
else
    #if file exists, exit as only want to run once
    exit
fi
exec 1>$LOG_FILE 2>&1
echo "==== starting ===="

echo "==== done ===="
exit
