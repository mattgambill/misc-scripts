<#
File: ipAutomation.ps1
OS: Windows
Shell: Powershell 6
Author: Matt Gambill
Assumptions: Script was written for a Laptop with Ethernet as the first Slot. Important for getIP.
Synopsis:
Script Prompts the user to change to Static IP Address, a Default Static IP Address, or DHCP. 
#>


#Define Function to Get the Machine Current IP Ethernet address
function getIP {
(Get-WmiObject -class win32_NetworkAdapterConfiguration -Filter 'ipenabled = "true"').ipaddress[0] # Slot 0 is the desired adapter
}
$currentIPAddr = getIP;
# Yes/No From the command line  
Write-host "Select Static (S), Default Static (192.168.1.254 Subnet: 255.255.255.0) (A), DHCP (D)" -ForegroundColor Yellow 
    $Readhost = Read-Host "  ( S / A / D )  "
    Switch ($ReadHost) 
     { 
       S {	$ipAddr = Read-Host 'Input New Laptop Static IP'; 
			$subNet = Read-Host 'Input New Subnet'; 
			netsh int ip set address "Ethernet" static $ipAddr $subNet; 
			Write-Host "Setting IP Address...";
			While($currentIPAddr -ne $ipAddr){
				$currentIPAddr = getIP;
				Write-Host "Sleeping"
				sleep "2"
			}; 
			getIP
			}
       A {	$ipAddr = "192.168.1.254"; 
			$subNet = "255.255.255.0"; 
			netsh int ip set address "Ethernet" static $ipAddr $subNet; 
			Write-Host "Setting IP Address...";
			While($currentIPAddr -ne $ipAddr){
				$currentIPAddr = getIP;
				sleep "2"
			}; 
			getIP
			}
       D {Write-Host "Switching to DHCP..."; 
		  netsh int ip set address "Ethernet" dhcp;
		  Write-Host "Done" } 
       Default {Write-Host "Error!! Exiting..";} 
     } 
