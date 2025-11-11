#!/bin/bash

##################################################
#  Author: Prajakta
#  date: 11-11-25
#  version: 1
#
#  This script will report AWS resource usages.
##################################################

OUTPUT_FILE="/mnt/c/Users/HP/Desktop/DevOps/Linux/resourceTracker"

# Overwrite report file with timestamp ONLY ONCE at start
echo "Report generated on (IST): $(TZ='Asia/Kolkata' /usr/bin/date +'%Y-%m-%d %H:%M:%S')" > "$OUTPUT_FILE"

# Enable debug mode if needed
set -x

# List S3 bucket - append output
echo "List of s3" >> "$OUTPUT_FILE"
aws s3 ls >> "$OUTPUT_FILE"

# List EC2 instances
echo "List of ec2" >> "$OUTPUT_FILE"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> "$OUTPUT_FILE"

# List Lambda functions
echo "List of lambda" >> "$OUTPUT_FILE"
aws lambda list-functions >> "$OUTPUT_FILE"

# List IAM users
echo "List of IAM users" >> "$OUTPUT_FILE"
aws iam list-users >> "$OUTPUT_FILE"

