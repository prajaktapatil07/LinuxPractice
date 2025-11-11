#!/bin/bash

###############################################
#Author: Prajakta

#Date : 9/11/2025

#This script outputs the node health

#version 1
###############################################
#using set we can set parameters
#-x is used for running commands in debug mode, debug mode means before each command output we see the executed command before the output
set -x
set -e #exits the script when there is error, but we need to use pipefail..coz -e will look for last command in pipe commands
set -o pipefail 

#echo "print the disk space"
df -h

#echo "print the memory"
free -g

#echo "print the CPU"
nproc

#used for process on system
#grep search for pattern
#awk scripting language
ps -ef | grep "amazon" | awk -F" " '{print $2}'
