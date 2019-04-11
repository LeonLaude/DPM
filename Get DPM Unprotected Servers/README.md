# Get DPM Unprotected Servers

## Description
This script can be used to retrieve all the servers/clients in System Center Data Protection Manager (DPM) that have no protected datasources.

### Prerequisites
[DataProtectionManager PowerShell Module](https://docs.microsoft.com/en-us/powershell/module/dataprotectionmanager/?view=systemcenter-ps-2019#dataprotectionmanager)

### Example
```
.\Get-DPMUnprotectedServers.ps1
```
Provide the following information:

- DPM server name

The result from the script, showing the unprotected servers:

![alt text](https://github.com/LeonLaude/DPM/blob/master/Get%20DPM%20Unprotected%20Servers/Media/DPM-Unprotected-Servers.png)


The protected and unprotected servers in the System Center DPM Administrator console:

![alt text](https://github.com/LeonLaude/DPM/blob/master/Get%20DPM%20Unprotected%20Servers/Media/DPM-Unprotected-Servers2.png)

