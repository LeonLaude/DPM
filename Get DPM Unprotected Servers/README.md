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

![alt text](https://github.com/LeonLaude/Get.DPM.Unprotected.Servers/blob/master/Media/DPM-UnprotectedServers.png)


The protected and unprotected servers in the System Center DPM Administrator console:

![alt text](https://github.com/LeonLaude/Get.DPM.Unprotected.Servers/blob/master/Media/DPM-UnprotectedServers2.png)

