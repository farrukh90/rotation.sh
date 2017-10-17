#!/bin/bash
#This line moves existing files to /mnt folder
find /tmp  -type f -name error.log.*.gz   -exec mv {} /mnt \; 

#This command below finds 10 MB files. 
find  /tmp -type f  -size +10M -name error.log  -exec mv {} error.log.$(date +%d.%m.%y).$RANDOM \;

#This  line zipps error.log
find  /tmp  -type f -mtime -1 -size +10M -name  error.log.* -exec gzip -v9 {} \;

