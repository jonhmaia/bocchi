# Script para criar atalho do Bocchi na Area de Trabalho
# Execute com: powershell -ExecutionPolicy Bypass -File criar-atalho-desktop.ps1

$projectDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$batFile = Join-Path $projectDir "Bocchi-Dev.bat"
$iconFile = Join-Path $projectDir "build\icon.ico"
$desktopPath = [Environment]::GetFolderPath("Desktop")
$shortcutPath = Join-Path $desktopPath "Bocchi.lnk"

$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($shortcutPath)
$Shortcut.TargetPath = $batFile
$Shortcut.WorkingDirectory = $projectDir
$Shortcut.IconLocation = $iconFile
$Shortcut.Description = "Bocchi - League of Legends Skin Changer"
$Shortcut.WindowStyle = 1  # Normal window
$Shortcut.Save()

Write-Host ""
Write-Host "============================================" -ForegroundColor Green
Write-Host "  Atalho criado com sucesso!" -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Green
Write-Host ""
Write-Host "  Local: $shortcutPath" -ForegroundColor Cyan
Write-Host ""
Write-Host "  Agora basta dar duplo-clique no atalho" -ForegroundColor Yellow
Write-Host "  'Bocchi' na sua Area de Trabalho!" -ForegroundColor Yellow
Write-Host ""
