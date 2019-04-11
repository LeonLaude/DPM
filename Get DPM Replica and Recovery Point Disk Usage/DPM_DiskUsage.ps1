# -------------------------------- 
# | Author: Leon Laude           | 
# | Email:  leon.laude@gmail.com | 
# -------------------------------- 
# 
# This script will retrieve the size of the replicas and recoverypoints being used by DPM.
# 

$DPMServerName = "Enter your DPM server"
$Information = @()

# Opening a DPM PowerShell session
Connect-DPMServer $DPMServerName 

# Getting a list of all protection groups
$PGList = Get-ProtectionGroup -DPMServerName $DPMServerName 

if ($PGList -ne $null) 
{
foreach ($PG in $PGList) 
{

# Getting a list of all data sources that are being protected
$DSList = Get-DPMDatasource -ProtectionGroup $PG | where {$_.Protected -eq "True"}
        foreach ($DS in $DSList) 
        {
        
        $CurrentReplicaUsedSpaceSizeInGb = [System.Math]::Round(($DS.ReplicaUsedSpace * 1.0) / (1024.0 * 1024.0 * 1024.0), 2);
        $CurrentShadowCopyUsedSpaceSizeInGb = [System.Math]::Round(($DS.ShadowCopyUsedSpace * 1.0) / (1024.0 * 1024.0 * 1024.0), 2);
        
        $objInfo = New-Object System.Object
        $objInfo | Add-Member -MemberType NoteProperty -Name 'ProductionServerName' -Value $DS.ProductionServerName
        $objInfo | Add-Member -MemberType NoteProperty -Name 'Name' -Value $DS.Name
        $objInfo | Add-Member -MemberType NoteProperty -Name 'ReplicaSizeInGb' -Value $CurrentReplicaUsedSpaceSizeInGb"GB"
        $objInfo | Add-Member -MemberType NoteProperty -Name 'RecoveryPointVolumeSizeInGb' -Value $CurrentShadowCopyUsedSpaceSizeInGb"GB"

        $Information += $objInfo

        
        }
        
    }  
        
}
# Print out the size of the data being used by DPM
$Information

# Closing the DPM PowerShell session
Disconnect-DPMServer $DPMServerName 