$ErrorActionPreference = "Stop"

$BackupDir = Join-Path $env:LOCALAPPDATA "KnightsCollegeCursor\CursorSchemeBackups"
if (!(Test-Path $BackupDir)) {
  throw "No cursor scheme backup folder found: $BackupDir"
}

$Backup = Get-ChildItem -Path $BackupDir -Filter "schemes-*.reg" |
  Sort-Object LastWriteTime -Descending |
  Select-Object -First 1

if ($null -eq $Backup) {
  throw "No schemes-*.reg backup found in: $BackupDir"
}

& reg.exe import $Backup.FullName | Out-Null
if ($LASTEXITCODE -ne 0) {
  throw "Windows could not import the backup: $($Backup.FullName)"
}

Write-Host "Restored cursor scheme list from: $($Backup.FullName)" -ForegroundColor Green
try {
  Start-Process control.exe "main.cpl,,1"
} catch {
  Write-Host "Open Mouse Properties manually if the Pointers tab did not open."
}
