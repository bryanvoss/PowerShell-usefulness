# Kill disconnected TS sessions
# bryan.voss@tcstire.com 2018-02-07
# Requires PSTerminalServices module (https://github.com/imseandavis/PSTerminalServices)

Import-Module PSTerminalServices
Get-TSSession -State Disconnected | where {$_.SessionID -ne 0} | Stop-TSSession -Force