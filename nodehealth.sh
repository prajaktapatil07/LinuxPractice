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

#echo "print the disk space"
df -h

#echo "print the memory"
free -g

#echo "print the CPU"
nproc

