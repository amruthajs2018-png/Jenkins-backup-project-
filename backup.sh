#!/bin/bash

DATE=$(date +%F)
BACKUP_FILE="jenkins_backup_$DATE.tar.gz"

# Backup Jenkins data
tar -czvf /tmp/$BACKUP_FILE /var/lib/jenkins

# Upload to S3
aws s3 cp /tmp/$BACKUP_FILE s3://jenkins-backup-bucket/

# Remove local file
rm /tmp/$BACKUP_FILE
