#!/bin/bash

JENKINS_HOME="/var/lib/jenkins"
BACKUP_DIR="/tmp/jenkins-backup"
S3_BUCKET="jenkins-backup-bucket-anu"
DATE=$(date +%F)

echo "Starting backup..."

mkdir -p $BACKUP_DIR

tar -czf $BACKUP_DIR/jenkins-$DATE.tar.gz $JENKINS_HOME

aws s3 cp $BACKUP_DIR/jenkins-$DATE.tar.gz s3://$S3_BUCKET/

if [ $? -eq 0 ]; then
    echo "Backup uploaded successfully!"
else
    echo "Backup failed!"
fi
