#!/bin/bash

TIME=`date +"%b-%d-%y"` # This Command will add date in Backup File Name.
FILENAME="http-$TIME.tar.gz" # Here i define Backup file name format.

# backup 
tar -cpzf /media/backup/$FILENAME /srv/http


NOW=$(date +"%m-%d-%Y-%R")
echo "backup /media/data/share $NOW" >> /root/cronlogs/backup_cron.log

rsync -av -W --progress --exclude 'Movies' /media/data/share /media/dataBackup/
