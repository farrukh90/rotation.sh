#!/bin/bash
#This command below finds 10 MB files. 
find /tmp  -type f -name error.log.*   -exec mv {} /mnt \; 
find  /tmp -type f  -size +10M -name error.log  -exec mv {} error.log.$(date +%d.%m.%y) \;
find  /tmp  -type f -mtime -1 -size +10M -name  error.log.* -exec gzip -v9 {} \;

