Write-Host -NoNewline "Setting SYSTEM theme to: "
Write-Host -BackgroundColor Black -ForegroundColor White "Light"

Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 1

Write-Host -NoNewline "Setting APPS theme to: "
Write-Host -BackgroundColor Black -ForegroundColor White "Light"

Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 1