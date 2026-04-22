# Jenkins Backup and Restore Project

This project implements a backup and restore solution for Jenkins using AWS S3.

## Features
- Backup Jenkins data using shell script
- Store backup in AWS S3
- Automated using cron job
- Easy restore process

## Tools Used
- Jenkins
- AWS S3
- GitHub

## Backup Process
Jenkins data from /var/lib/jenkins is compressed and uploaded to S3.

## Restore Process
Backup is downloaded from S3 and extracted to restore Jenkins data.
