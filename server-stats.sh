echo "================================"
echo "SERVER PERFORMANCE STATS"
echo "================================"

echo -e "\nDate and Time:"
date

echo -e "\nUptime:"
uptime -p

echo -e "\nCPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Load: " $2 + $4 "%"}'

echo -e "\nMemory Usage:"
free -h 

echo -e "\nDisk Usage:"
df -h | awk '$NF=="/"{printf "Disk Usage: %s/%s (%s)\n", $3, $2, $5}'

echo -e "\nTop 5 Memory Consuming Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6

echo -e "\nTop 5 CPU Consuming Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu |

echo -e "\nLogged-in Users:"
who 

echo -e "\n==============================="
echo "End of Server Performance Stats"
echo "==============================="