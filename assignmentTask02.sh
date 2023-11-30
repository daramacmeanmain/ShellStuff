informationFile=informationTask02.txt
echo "This is the free space available on the machine:" >> $informationFile
echo "" >> $informationFile
free -h >> $informationFile
echo "" >> $informationFile
echo "" >> $informationFile
echo "This is information on disk space utilization:" >> $informationFile
echo "" >> $informationFile
df -h >> $informationFile
echo "" >> $informationFile
echo "" >> $informationFile
echo "These are the active network interface settings:" >> $informationFile
echo "" >> $informationFile
ifconfig >> $informationFile
echo "" >> $informationFile
echo "This shows a snapshot of the current processes:" >> $informationFile
top -b -n 1 >> $informationFile
