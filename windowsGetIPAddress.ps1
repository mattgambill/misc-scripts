# Script Gets IP address of machine and saves it to file
(Get-WmiObject -class win32_NetworkAdapterConfiguration `
-Filter 'ipenabled = "true"').ipaddress[0] > ip.txt
