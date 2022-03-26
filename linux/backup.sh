#!/bin/bash

sudo tar cf /var/backups/home.tar /home
mv /var/backups/home.tar /var/backups/home.%d%m%Y.tar
ls -lh /var/backups > /var/backups/file_report.txt
free -h > /var/backups/disk_report.txt
