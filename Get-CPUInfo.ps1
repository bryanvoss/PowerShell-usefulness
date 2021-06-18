$property = “systemname”,”maxclockspeed”,”addressWidth”,

            “numberOfCores”, “NumberOfLogicalProcessors”

Get-WmiObject -class win32_processor -Property  $property |

Select-Object -Property $property 
