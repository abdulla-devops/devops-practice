#!/bin/bash
echo "Server Health Check Started"
echo "Checking Disk Space"
df -h
echo "Checking Memory"
free -h
echo "complete!"
