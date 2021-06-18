# CPU Info
$property = “systemname”,”maxclockspeed”,”addressWidth”,“numberOfCores”, “NumberOfLogicalProcessors”
Get-WmiObject -class win32_processor -Property  $property |
Select-Object -Property $property 

# RAM Info
Get-WMIObject -class Win32_PhysicalMemory |
Measure-Object -Property capacity -Sum |
select @{N="TotalRAMGB"; E={[math]::round(($_.Sum / 1GB),2)}}

# Disk Info
Get-WmiObject -Class Win32_logicaldisk -Filter "DriveType = '3'" | 
Select-Object -Property DeviceID, DriveType, VolumeName, 
@{L='FreeSpaceGB';E={"{0:N2}" -f ($_.FreeSpace /1GB)}},
@{L="Capacity";E={"{0:N2}" -f ($_.Size/1GB)}},
@{L="UsedSpaceGB";E={"{0:N2}" -f (($_.Size-$_.FreeSpace)/1GB)}}
