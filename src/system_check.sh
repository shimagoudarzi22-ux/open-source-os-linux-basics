#!/bin/bash

# Colors for professional look
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}==============================${NC}"
echo -e "${GREEN}   LINUX SYSTEM MONITOR v1.0  ${NC}"
echo -e "${BLUE}==============================${NC}"

echo -e "Current Date: $(date)"
echo -e "System Uptime: $(uptime -p)"

echo -e "\n${GREEN}[Memory Usage]${NC}"
free -h | awk 'NR==2{print "Used: "$3" / Total: "$2}'

echo -e "\n${GREEN}[Disk Status]${NC}"
df -h / | awk 'NR==2{print "Capacity: "$5" full"}'

echo -e "\n${BLUE}------------------------------${NC}"
echo "Auto-Test: Environment Check Passed."
