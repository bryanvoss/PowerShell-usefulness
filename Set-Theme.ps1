$Theme = $args[0]

Switch($Theme){
    "dark" {
        Write-Host -NoNewline "Setting SYSTEM theme to: "
        Write-Host -BackgroundColor Black -ForegroundColor White "Dark"
        
        Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0
        
        Write-Host -NoNewline "Setting APPS theme to: "
        Write-Host -BackgroundColor Black -ForegroundColor White "Dark"
        
        Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0        
    }

    "light" {
        Write-Host -NoNewline "Setting SYSTEM theme to: "
        Write-Host -BackgroundColor White -ForegroundColor Black "Light"

        Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 1

        Write-Host -NoNewline "Setting APPS theme to: "
        Write-Host -BackgroundColor White -ForegroundColor Black "Light"

        Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 1
    }

    Default {
        Write-Host -ForegroundColor Red 'Please specify either "light" or "dark".'
    }
}