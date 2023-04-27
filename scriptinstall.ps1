# Installa il pacchetto WinGet (se non è già installato)
if(Test-Path (Join-Path $env:ProgramFiles 'WindowsApps\Microsoft.Winget_1.0.11692.0_x64__8wekyb3d8bbwe\winget.exe')) {
    Write-Host "WinGet è già installato!"
}
else {
    Invoke-WebRequest -Uri https://github.com/microsoft/winget-cli/releases/download/v1.0.11692/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -OutFile winget.msixbundle
    Add-AppPackage -Path winget.msixbundle
    Write-Host "WinGet è stato installato."
}

# Installa i programmi
winget install GoogleChrome
winget install Notepadplusplus
winget install VLC
winget install Spotify

# Installa i driver
winget install Intel.IntelGraphicsDriver
winget install Realtek.RealtekAudioDriver
winget install Logitech.LogiOptions

# Aggiorna tutti i pacchetti installati
winget upgrade --all
```