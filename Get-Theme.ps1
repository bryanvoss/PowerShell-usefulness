$SysTheme = Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme
$AppTheme = Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme

Write-Host -NoNewline "System theme: "
if($SysTheme.SystemUsesLightTheme -eq 1){
    Write-Host -BackgroundColor White -ForegroundColor Black "Light"
} else {
    Write-Host -BackgroundColor Black -ForegroundColor White "Dark"
}

Write-Host -NoNewline "Apps theme: "
if($AppTheme.AppsUseLightTheme -eq 1){
    Write-Host -BackgroundColor White -ForegroundColor Black "Light"
} else {
    Write-Host -BackgroundColor Black -ForegroundColor White "Dark"
}
