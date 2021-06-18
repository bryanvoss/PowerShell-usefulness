Get-WMIObject -class Win32_PhysicalMemory |
Measure-Object -Property capacity -Sum |
select @{N="TotalRAMGB"; E={[math]::round(($_.Sum / 1GB),2)}}
